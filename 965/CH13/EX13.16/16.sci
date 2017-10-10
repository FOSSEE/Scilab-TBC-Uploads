clc;
clear all;
disp("Nitrogen diffusion rate ")
A=1;
T=25+273;
L=12/1000;//m
G=8314;// gas constant
xB=0.2;
Dab=16*10^(-6);
xC=0.1;
Dac=14*10^(-6);
xD=0.7;
Dad=9*10^(-6);
D=1/(xB/Dab+xC/Dac+xD/Dad);//m^2/s
p=1.013;
pN1=0.15;//bar
pN2=0.08;//bar
pM1=p-pN1;
pM2=p-pN2;
Mn=28;
mn=(D*A*Mn*p*10^5/(G*T*L))*log(pM2/pM1)
disp("kg/m^2",mn,"diffusion rate of gaseous mixture =")





