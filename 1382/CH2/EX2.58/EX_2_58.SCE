// Example 2.58:ressitive paramters
clc;
clear;
close;
Ic= 2.6; //in milli amperes
Vt=26;//volatge 
ft=500;//frequency in mega hertz
Cbc=3;//in pico farad
rbb=100;//in ohms
rbe=1;//IN KILLO OHMS
gm=Ic/Vt;//transconductance
Beta= gm*rbe*10^3;//
Cbe= (((gm)/(2*%pi*ft*10^6))-Cbc*10^-12)*10^12;//in pico farad
disp(gm,"transconductance")
disp(Cbe,"in pico farad")
