REM import -n etrs89 etrs89.stn etrs89.msr -r ETRS89-NOR
import -n etrs89 etrs89.xml -r ETRS89-NOR
geoid etrs89 -g HREF2025A_NN2000_EUREF89.gsb
adjust etrs89 --output-adj-msr --output-pos-uncertainty --output-all-covariances --output-corrections-file --export-xml-stn-file --export-xml-msr-file
