#!/usr/bin/env bash

#https://stackoverflow.com/questions/24114676/git-error-failed-to-push-some-refs-to
#https://rogerdudler.github.io/git-guide/index.pt_BR.html


#stash
git pull origin master
echo "*** Update git done. ***"
git add *
git commit -m 'Update for start Working'
echo "*** Update Stash done. ***"
git push origin master

#GitHub 
#Upload
echo "*** Update GitHub done. ***"
git push -f webinar master
#Download
#git pull webinar master

# git reset --mixed origin/master
# git add .
# git commit -m "stash"
# git push origin master
# git config --global user.name ""
# git config --global user.email 
