// Example 2.56:ressitive paramters
clc;
clear;
close;
Ic= 1; //in milli amperes
Vt=26;//volatge 
ft=80;//frequency in mega hertz
Cbc=12;//in pico farad
//H Paramters are
hie=6;//in killo ohms
hfe=224;
gm=Ic/Vt;//transconductance
rbe= hfe/gm;// in ohms
rbb=hie*10^3-rbe;//in ohms
Cbe= (((gm)/(2*%pi*ft*10^6))-Cbc*10^-12)*10^12;//in pico farad
disp(gm,"transconductance")
disp(rbe,"in ohms")
disp(rbb,"in ohms")
disp(Cbe,"in pico farad")
