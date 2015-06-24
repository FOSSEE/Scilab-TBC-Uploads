// Example 2.55:ressitive paramters
clc;
clear;
close;
Ic= 5; //in milli amperes
Vt=26;//volatge 
//H Paramters are
hie=1;//in killo ohms
hfe=100;
hoe=4*10^-5;// in ampere per volt
hre=10^-4;
gm=Ic/Vt;//transconductance
rbe= hfe/gm;// in ohms
rbb=hie*10^3-rbe;//in ohms
rbc=(rbe/(hre)*10^-6);//in mega ohms
gce1=hoe-(1+hfe)*(1/(rbc*10^6));//in mho
rce=(1/gce1)*10^-3;//in killo ohms
disp(gm,"transconductance")
disp(rbe,"in ohms")
disp(rbc,"in mega ohms")
disp(rbb,"in ohms")
disp(gce1,"in mho")
disp(rce,"in killo ohms")
