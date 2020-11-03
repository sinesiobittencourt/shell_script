#! /bin/bash

FILETYPES=( "*.html" "*.woff" "*.css" "*.jpg" "*.jpeg" "*.gif" "*.js" "*.svg" )
# specify a list of directories to check recursively
DIRECTORIES="/home/"

for currentdir in $DIRECTORIES
do
   for i in "${FILETYPES[@]}"
   do
      find $currentdir -iname "$i" -exec bash -c 'PLAINFILE={};GZIPPEDFILE={}.gz; \
         if [ -e $GZIPPEDFILE ]; \
         then   if [ `stat --printf=%Y $PLAINFILE` -gt `stat --printf=%Y $GZIPPEDFILE` ]; \
                then    echo "$GZIPPEDFILE outdated, regenerating"; \
                        gzip -9 -f -c $PLAINFILE > $GZIPPEDFILE; \
                        chown www-data. $GZIPPEDFILE;
                 fi; \
         else echo "$GZIPPEDFILE is missing, creating it"; \
              gzip -9 -c $PLAINFILE > $GZIPPEDFILE; \
              chown www-data. $GZIPPEDFILE;
         fi' \;
  done
done
