//Example 1.2 // diameter and length
clc;
clear;
close;
format('v',6)
P=2.5;//power in kW
V=240;// in volts
K=1;//radiating efficiency
e=0.9;//emissivity
p=42.5*10^-6;// resistivity in ohm-cm
T1=1500;//in dgree celsius
T2=450;//in degree celsius
x=((%pi*V^2)/(4*(p*10^-2)*P*10^3));//
H=((5.72*K*e)*(((T1+273)/100)^4-((T2+273)/100)^4));//
z=((P*10^3)/(%pi*H))^2;//
l=(z*x)^(1/3);//length in meter
d=((sqrt(z))/l)*10^3;//diameter in mm
disp(l,"length in meter")
disp(d,"diameter in mm")

