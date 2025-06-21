# Zip data pack
zip -r - pack.mcmeta LICENSE.txt data *-overlay > ${PWD##*/}.zip
# Return success status for GitHub Actions
true
