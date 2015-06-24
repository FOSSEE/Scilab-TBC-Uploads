// Chapter7
//Example-7.2
//Figure 7.24
//page 222
clear;
clc;
R2=1.5*10^3;          //in Ohm
R1=10*10^3;          //in Ohm
Vcc=15;         //in V
Vpm=1;         //in V              (=Vp_)
C=10*10^-9;         //in Farad

Vofst=Vcc*R2/(R1+R2);
printf("\n Voffset %0.2f V",Vofst);
Vc=Vofst+Vpm;
printf("\n Vc %0.2f V",Vc);
Rl=10*10^6;          //in Ohm
T=Rl*C;          //discharge Time
printf("\n T %0.2f S",T);
Vinp=1.96;  
Vinm=5.96;
Vind=Vinp-Vinm;
printf("\n Vin_diff =%0.0f V \n ",Vind);
//Graph 
t=(0:0.01:5)';
f=1;        //1kHz
Vin=2*sin(f*%pi*t);
Vin1=Vin^2-1;
Vout=Vin1+2.96;
clf;
plot(t,Vout,t,Vin1)
xtitle("Green Input  signal & Blue Output signal","t","Vin");//result
xgrid;
