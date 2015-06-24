//Exa 2.6
clc;
clear;
close;
//given data
k_brick=0.93;// in W/mK
k_insulation=0.12;// in W/mK
k_wood=0.175;// in W/mK
k_Al=204;// in W/mK
k1=k_brick;
k2=k_insulation;
k3=k_wood;
T1=200;// in degree C
T4=10;// in degree C
x1=10*10^-2;// in m
x2=25*10^-2;// in m
x3=1*10^-2;// in m
A=0.1;// in m^2
sigmaR= x1/(k1*A)+x2/(k2*A)+x3/(k3*A);
q1=(T1-T4)/sigmaR;
disp(q1,"Heat transfer rate without rivet in Watt");

// Heat transfer rate with rivet
d=3*10^-2;// in meter
x=x1+x2+x3;
k_rivet=k_Al;
A_rivet=%pi*d^2/4;// in m^2
R_rivet= x/(k_rivet*A_rivet);
A_eff=A-A_rivet;// in m^2
sigmaRw= 1/A_eff*(x1/k1+x2/k2+x3/k3);// in k/W
R_eq= R_rivet*sigmaRw/(R_rivet+sigmaRw);// in k/W
q2=(T1-T4)/R_eq;// in watt
disp(q2,"Heat transfer rate with rivet in Watt");
percentIncrease=(q2-q1)*100/q1;// percent increase in heat flow due to rivet
disp(ceil(percentIncrease),"Percentage increase in heat flow due to rivet in %")
