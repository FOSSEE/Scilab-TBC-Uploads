//Exa 5.6
clc;
clear;
close;
//Given data :
l=3;//km
P=3000;//KW
VSL=11*10^3;//volt
R=l*0.4;//ohm
X=l*0.8;//ohm
VS=VSL/sqrt(3);//Volts
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
//VS=VR+I*(R*cos_fi_r+X*sin_fi_r);//V
I_into_VR=P*1000/3/cos_fi_r;//VA
//VR^2-VS*VR+I_into_VR*(R*cos_fi_r+X*sin_fi_r);
p=[1 -VS I_into_VR*(R*cos_fi_r+X*sin_fi_r)];
VR=roots(p);
VR=VR(1);//taking greater value
I=I_into_VR/VR;//A
VRL=sqrt(3)*VR;//volt
disp(VRL,"Line voltage at load end(volt) : ");
Eta_T=P*1000/(P*1000+3*I^2*R)*100;//%
disp(Eta_T,"Transmission Efficiency(%) : ");
