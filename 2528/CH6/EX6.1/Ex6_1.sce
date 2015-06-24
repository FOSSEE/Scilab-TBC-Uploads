//Example6.1:"Output signal""
//Page 176
//figure 6.4
clear;
clc;
R1=20000;       //in Ohm
R2=400;         //in Ohm
Vinp=0.006;         //in V  (Vinp=Vin+)
Vinm=-0.006;         //in V   Vinp=Vin_)
Vh=0.010;         //in V
Vad=Vinm*(1+R1/R2)-Vinp*R1/R2;          //------1 equation Va=0.606mV approx
disp("V",Vad,"Va");
//for common mode
Vac=Vh*(1+R1/R2)-Vh*R1/R2;
disp("V",Vac,"Va");
Rf=50000;       //in Ohm
Ri=10000;         //in Ohm
Av=Rf/Ri;
disp(Av,"Av");
Va=-0.606;       //V 
Vb=-Va;
Voutd=Av*(Vb-Va);
disp("V",Voutd,"Desired differential input signal is Vb-Va=");
Vout=(Vinp-Vinm)*(Rf/Ri)*(1+2*(R1/R2));
disp("V",Vout,"By using equation 6.1 given in book Vout =(Vinp-Vinm)*(Rf/Ri)*(1+2*(R1/R2))=");
CMRR=10^5;
Av=505;
Vincm=10*10^-3;
Voutcm=Vincm*Av/CMRR;
disp("V",Voutcm,"Vout(cm)")
