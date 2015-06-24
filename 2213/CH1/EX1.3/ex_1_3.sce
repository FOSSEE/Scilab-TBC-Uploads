//Example 1.3 // design heating element
clc;
clear;
close;
format('v',7)
V=440;// volts
P=20;//in kW
T1=1200;//in degree celsius
T2=700;// in degree celsius
K=0.6;//radiating efficiency
e=0.9;//emissivity
t=0.025;//thickness in mm
p=1.05*10^-6;//resisitivity in ohm - meter
Pp=(round(P*10^3))/3;//power per phase in watts
Pv= (V/sqrt(3));//phase voltage
R=Pv^2/Pp;//resistance of strip in ohms
x=((R*t*10^-3)/(p));//
H=((5.72*K*e)*(((T1+273)/100)^4-((T2+273)/100)^4));//in W/m^2
y=((Pp)/(H*2));//in m^2
w=sqrt(y/x)*10^3;//width in mm
l=x*w*10^-3;//length of strip in meter
disp(w,"width in mm")
disp(l,"length of strip in meter")

