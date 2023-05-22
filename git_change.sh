git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "Alvaro" ];
        then
                GIT_COMMITTER_NAME="beautylotus";
                GIT_AUTHOR_NAME="beautylotus";
                GIT_COMMITTER_EMAIL="beautylotus718@gmail.com";
                GIT_AUTHOR_EMAIL="beautylotus718@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD