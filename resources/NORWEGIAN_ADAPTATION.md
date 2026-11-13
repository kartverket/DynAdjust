# Norwegian adaptation to DynAdjust

## Windows and vcpkg

Follow the instructions in [building page](resources/BUILDING.md).

Otherwise, you also need to install OpenBlas by vcpkg. You can do this by running the following command in the command prompt:

```
vcpkg install openblas:x64-windows
vcpkg integrate install
```

After that, run the following command to build DynAdjust:

```
cmake -G "Visual Studio 17 2022" -A x64 -D USE_MKL=OFF -D CMAKE_TOOLCHAIN_FILE="C:/vcpkg/scripts/buildsystems/vcpkg.cmake" -S dynadjust -B build
cmake --build build --config Release --parallel
```

Then, set your PATH environment variable to include the path to the DynAdjust executable, which is located in the `build/Release` or in `bin` folder.
It depends on how DynAdjust is built.

```

```

## Setting up the Norwegian geoid model

```


```

## Setting up sample data for a Norwegian geodetic network



```
cd sampleData
import -n etrs89 etrs89.stn etrs89.msr -r ETRS89-NOR
geoid etrs89 -g HREF2025A_NN2000_EUREF89.gsb
adjust etrs89 --output-adj-msr --constraints 211300470,CCC


```
