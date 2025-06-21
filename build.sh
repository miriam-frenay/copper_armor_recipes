# Get project name
if [ "$BITBUCKET_REPO_SLUG" != "" ]; then PROJECT="$BITBUCKET_REPO_SLUG"; else PROJECT="${PWD##*/}"; fi
# Zip data pack
zip -r - pack.mcmeta LICENSE.txt data *-overlay > ${PROJECT}.zip
# Return success status for Bitbucket pipeline
true
