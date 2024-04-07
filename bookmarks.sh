BOOKMARK_FILE=$HOME/.bookmarks

function bookmark() {
    HERE=$(pwd)
    ESC=$(echo $HERE | sed 's/\//\\\//g')
    touch $BOOKMARK_FILE

    case $1 in 
        "delete")
            echo "deleteing $HERE from bookmarks"
            sed -i "/$ESC$/d" $BOOKMARK_FILE
            sort -o $BOOKMARK_FILE $BOOKMARK_FILE 
            ;;
        "cd")
            cd $(cat $BOOKMARK_FILE | fzf --height=~10 --cycle)
            ;;
        "list")
            cat $BOOKMARK_FILE
            ;;
        "save")
            if ! grep -q "$HERE$" $BOOKMARK_FILE; then 
                echo "bookmarking $HERE"
                echo "$HERE" >> $BOOKMARK_FILE
                sort -o $BOOKMARK_FILE $BOOKMARK_FILE 
            fi
            ;;
        "-h" | "--help" | "help" | *)
            echo "bookmark help"
            echo "  save   - saves your current working directory to bookmarks"
            echo "  cd     - lets you search through your bookmarks and cds to the one you select"
            echo "  list   - lists your bookmarks"
            echo "  delete - deletes your current working directory from your bookmarks"
            ;;
    esac
}
