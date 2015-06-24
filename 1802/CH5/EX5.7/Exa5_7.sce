//Exa 5.7
clc;
clear;
close;
//Given Data :
format('v',7);
I=180;//in Ampere
cos_fir=0.8;//unitless
R=0.7;//in ohm/phase
X=1.2;//in ohm/phase
ETA=90;//in %
Pdev_BY_VR=3*I*cos_fir;//in KW
Psending_BY_VR=Pdev_BY_VR/(ETA/100);//in kW
Losses=3*I^2*R;//in watt
VR=Losses/(Psending_BY_VR-Pdev_BY_VR);//in volt
Vs=sqrt((VR*cos_fir+I*R)^2+(VR*sqrt(1-cos_fir^2)+I*X)^2);
disp(Vs*sqrt(3),"Sending end voltage Vs(line) in volts :");