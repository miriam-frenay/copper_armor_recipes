# Get project name
if [ "$BITBUCKET_REPO_SLUG" != "" ]; then PROJECT="$BITBUCKET_REPO_SLUG"; else PROJECT="${PWD##*/}"; fi
# Zip data pack
zip -r - pack.mcmeta LICENSE.txt data > ${PROJECT}.zip
# Optionally zip resource pack
[ -d resources ] && ( cd resources && zip -r - * ) > ${PROJECT}_resources.zip
# Return success status for Bitbucket pipeline
true
