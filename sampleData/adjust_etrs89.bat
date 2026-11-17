import -n etrs89 etrs89.stn etrs89.msr -r ETRS89-NOR
geoid etrs89 -g HREF2025A_NN2000_EUREF89.gsb
adjust etrs89 --output-adj-msr --constraints 211300470,CCC
