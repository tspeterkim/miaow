verdiSetActWin -dock widgetDock_<Decl._Tree>
debImport "wave.fsdb"
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/home/yashg6/miaow/src/verilog/tb/results/benchmark_out/BinarySearch/wave.fsdb}
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvZoom -win $_nWave2 0.000000 2583366.385689
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 0.000000 47428.413277
wvZoom -win $_nWave2 0.000000 2775.500949
wvZoom -win $_nWave2 0.000000 238.855503
simSetSimulator "-vcssv" -exec "/home/yashg6/miaow/src/verilog/tb/simv" -args \
           "+dump_waveforms=1 +KILLTIME=100000000000"
nsMsgSwitchTab -tab general
debImport "-dbdir" "/home/yashg6/miaow/src/verilog/tb/simv.daidir"
debLoadSimResult \
           /home/yashg6/miaow/src/verilog/tb/results/benchmark_out/BinarySearch/wave.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave3
