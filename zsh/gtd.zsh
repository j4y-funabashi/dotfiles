export NOTES_DIR=$HOME/notes
export ZK_NOTEBOOK_DIR=$NOTES_DIR

# func
nn() {
    cd $NOTES_DIR;
    vim $NOTES_DIR/000-inbox.md
}

nf() {
    cd $NOTES_DIR
    vim `fzf --preview="cat {}" --preview-window=right:70%:wrap`
}

nreview() {
    ranger $NOTES_DIR
}

nsync() {
    cd $NOTES_DIR;
    git add -A
    git commit -m "$USER@$HOST"
    git fetch origin
    git merge origin/main
    git push origin main
}
