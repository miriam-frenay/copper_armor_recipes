:: Get project name
for %%d in (.) do set "PROJECT=%%~nxd"
:: Zip data pack
tar caf %PROJECT%.zip pack.mcmeta LICENSE.txt data
:: Optionally zip resource pack
if exist resources tar caf %PROJECT%_resources.zip --strip-components=1 resources
