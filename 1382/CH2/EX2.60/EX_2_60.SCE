// Example 2.60:hybrid parameters
clc;
clear;
Ic= 10; //in milli amperes
Vt=26;//volatge 
ft=500;//frequency in mega hertz
Cbc=3;//in pico farad
gm=Ic/Vt;//transconductance
//H Paramters are
hie=500;//in killo ohms
hfe=100;
hre=0.1;//
hoe=4*10^-5;// in ampere per volt
rbe=hfe/gm;// in ohms
rbc= ((rbe)/hre)*10^-3;//
x=hoe-((hfe*10^-4)/(rbe));//
rce=(1/(x*10^-2))*10^-5;//
Cbe=(((gm)/(2*%pi*ft*10^6))*10^13-Cbc);//in pico farad
disp(gm,"(gm)transconductance")
disp(rbe,"(rbe)in ohms")
disp(rbc,"(rbc)in mega ohms")
disp(rce,"(rce)in killo ohms")
disp(Cbe,"(Cbe)in pico farad")
