clear
clc
//Given
//Temperature(kelvin)
T=922;
//Pressure(Pascal)
P=460000;
//Let A=PH3,R=P4,S=H2
FAo=40;//mol/hr
k=10;//(/hr)
R=8.314;
CAo=P/(R*T);// mol/m3
e=(7-4)/4;
XA=0.8;
//The volume of plug flow reactor is given by
V=FAo*[(1+e)*log(1/(1-XA))-e*XA]/(k*CAo);
printf("\n volume(m3) of reactor is %f \n",V)