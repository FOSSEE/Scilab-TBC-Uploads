//Ex6_9
clc
ic = 2*10^-3
ie = ic// as base current is negligble
VT = 25*10^-3
re = VT/ie
gm = ie/VT
disp("ic = "+string(ic)+"A")//collector current
disp("ie = "+string(ie)+"A")//emitter current with negligble base current
disp("VT = "+string(VT)+"V")//voltage at room temperature
disp("re = VT/ie = "+string(re)+"ohm")//emitter resistance
disp("gm = ie/VT = "+string(gm)+"mho")//conductance
rc = 100*10^3//slope of output characteristics
disp("rc = "+string(rc)+"ohm")
hoe = 1/rc
disp("hoe = 1/rc = "+string(hoe)+"Mho")//output conductance
