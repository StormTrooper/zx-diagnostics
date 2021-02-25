echo Building Flash Utility...
sjasmplus flashutil.sjasm  --lst=flashutil.lst --lstlab 
if [ $? -eq 0 ]; then
    sjasmplus flashutilrom.sjasm  --lst=flashutilrom.lst --lstlab
    if [ $? -eq 0 ]; then
        echo Building tape images...
        wine ../bin2tap -o flashutil.tap -a 57344 flashutil.bin
        wine ../bin2tap -o flashutilrom.tap -a 32768 flashutilrom.bin
    fi
fi
exit $?
