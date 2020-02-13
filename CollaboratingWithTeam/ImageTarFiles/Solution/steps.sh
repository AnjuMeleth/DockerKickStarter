# Select the image that needs to be tarred to be shared
docker save anjurose/webapp > webapp.tar
ls
# Tarred file could be shared acroos the team
# Team member can get the tarred file and generate the image as below
docker image ls
docker load -i webapp.tar
docker image ls
# anjurose/webapp image will be retreived from the tar file


