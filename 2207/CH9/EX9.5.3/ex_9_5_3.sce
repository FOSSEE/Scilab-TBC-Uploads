//Example 9.5.3: IS_rms, I1_rms, PF and HF
clc;
clear;
close;
//given data :
Vm=230;// in volts
Ia=10;// in A
alpha=%pi/6;//degree
ea=((2*Vm*sqrt(2))/%pi)*cos(alpha);//
disp(ea,"average output voltage is,(V)=")
isrms=Ia*(1-(2*alpha)/%pi)^(1/2);//
disp(isrms,"rms value of supply current is,(A)=")
I1rms=((2*sqrt(2)*Ia*cos(alpha))/%pi);//
disp(I1rms,"rms value of fundamental component of supply current is,(A)=")
hf=((isrms/I1rms)^2-1)^(1/2);//
disp(hf*100,"HF of supply current is,(%)=")
PF=((sqrt(2))*(1+cos(alpha)))/((%pi*(%pi-alpha))^(1/2));//
disp(PF,"PF (lagging)of supply current is,(%)=")
