export TODOTXT_DEFAULT_ACTION=ls
export NOTES_DIR=$HOME/notes
export ZK_NOTEBOOK_DIR=$NOTES_DIR

# func
nn() {
    cd $NOTES_DIR;
    vim "${NOTES_DIR}/inbox/$(date +%Y%m%d).md"
}

nf() {
    cd $NOTES_DIR
    vim `fzf --preview="cat {}" --preview-window=right:70%:wrap`
}

nreview() {
    ranger $NOTES_DIR
}

nsync() {
    nindex

    cd $NOTES_DIR;
    git add -A
    git commit -m "$USER@$HOST"
    git fetch origin
    git merge origin/main
    git push origin main
}

nindex() {
    cd $NOTES_DIR;
    _n_index_projects
}

_n_index_projects() {
    find . -iname "*prjx*" -exec awk 'NR==1&&/^#.*/{sub("# ",""); print "* ["$0"]("FILENAME")"}' {} \; > 000-projects.md
}
