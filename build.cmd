:: Get project name
for %%d in (.) do set "PROJECT=%%~nxd"
:: Zip data pack
tar caf %PROJECT%.zip pack.mcmeta LICENSE.txt data *-overlay
