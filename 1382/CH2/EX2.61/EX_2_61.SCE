// Example 2.61:hybrid parameters
clc;
clear;
Ai=10;//current gain
Vce=10;//
Ic= 10; //in milli amperes
Vt=26;//volatge 
f=10//frequency in mega hertz
Cbc=3;//in pico farad
gm=Ic/Vt;//transconductance
//H Paramters are
hie=500;//in ohms
hfe=100;
rbe= hfe/gm;//
rbb= hie-rbe;//
Ft= Ai*f;//in mega hertz
fb= Ft/hfe;//
Ce=((gm/(2*%pi*Ft*10^6))-Cbc*10^-12)*10^12;//
disp(gm*10^3,"(gm) in mS")
disp(rbe,"(rbe)in ohms")
disp(rbb,"(rbb) in ohms")
disp(Ft,"(ft) in mega hertz")
disp(fb,"(fb) in mega hertz")
disp(Ce,"(Ce)in picofarad")
