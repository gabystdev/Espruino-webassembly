DEFINES += -DEMSCRIPTEN
INCLUDE += -I$(ROOT)/targets/emscripten
SOURCES +=                              \
targets/emscripten/main.c                    \
targets/emscripten/jshardware.c
CFLAGS += -Wno-unused-function -Wno-switch
LDFLAGS += -s EXPORTED_FUNCTIONS='["_jsInit","_jsIdle","_jsKill","_jshPushIOCharEvent","_jsSendPinWatchEvent","_jsSendTouchEvent","_jshGetDeviceToTransmit","_jshGetCharToTransmit","_jsGfxChanged","_jsGfxGetPtr","_jsfResetStorage"]' -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall"]' -s WASM=1 -sSTANDALONE_WASM=1 --no-entry -sERROR_ON_UNDEFINED_SYMBOLS=0 -s ASSERTIONS=1 --memory-init-file 0 -Oz 

