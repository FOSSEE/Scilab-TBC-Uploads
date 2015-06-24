//Exa 4.24
clc;
clear;
close;
//Given data :
VL=132;//kV
f=50;//Hz
r=31.8/2;//mm
rdash=0.7788*r;//mm
d=10*1000;//mm
epsilon_o=8.854*10^-12;//permitivity
disp("One conductor ACSR moose conductor line : ");
LA=0.2*[log(d/rdash)+1/2*log(2)-%i*0.866*log(2)];//mH/km
LB=0.2*log(d/rdash);//mH/km
LC=0.2*[log(d/rdash)+1/2*log(2)+%i*0.866*log(2)];//mH/km
Lav=(LA+LB+LC)/3;//mH/km
XL=2*%pi*f*Lav*10^-3;//ohm
disp(XL,"Inductive reactance per Km per phase(ohm) : ");
d1=10;//m
d2=10;//m
d3=20;//m
CN=2*%pi*epsilon_o/log((d1*d2*d3)^(1/3)/(rdash*10^-3))/10^3;//F/km
XC=1/(2*%pi*f*CN*10^6);//ohm
disp(XC/10^6,"Capacitivetive reactance per Km per phase(Mohm) : ");
disp("Three conductor bundled line : ");
S=40/100;//m
Ds=(rdash*10^-3*S^2)^(1/3);//m
Deq=(d1*d2*d3)^(1/3);//m
Ldash=0.2*log(Deq/Ds);//mH/km
XLdash=2*%pi*f*Ldash*10^-3;//ohm
disp(XLdash,"Inductive reactance per km per phase(ohm) : ");
Ds=(r*10^-3*S^2)^(1/3);//m
Cdash=2*%pi*epsilon_o*10^3/log(Deq/Ds);//microF/km
XC=1/(2*%pi*f*Cdash)/10^6;//Mohm
disp(XC,"Capacitivetive reactance per km per phase(Mohm) : ");

