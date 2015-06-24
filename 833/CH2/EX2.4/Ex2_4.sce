//Caption:Find Regulation on full load at 0.8 power factor lagging
//Exa:2_4
clc;
clear;
close;
P_s=500000//Power supplied(in VA)
V_1=2200//Voltage on primary side(in volt)
V_2=500//Voltage on secondary side(in volt)
f=50//frequency(in hertz)
Eff=97//Efficiency of transformer(in %)
Eff_m=75//Maximum efficiency(in %) of its full load
Z_1=10//Impedance(in %)
pf_1=1//Power factor for maximum efficiency
pf_2=0.8//Power factor lagging
I_fl=P_s/V_2
I=(Eff_m*I_fl)/100
Losses=(100-Eff)/100
Cu=Losses/2
Fe=Losses/2
C=(Cu*P_s*Eff_m)/100
R=C/(I^2)
V=(Z_1*V_2)/100
Z=V/I_fl
X=sqrt(Z^2-R^2)
theta=(acosd(pf_2))
Re=(I_fl*R*pf_2)+(I_fl*X*sind(theta))
disp(Re,'Regulation on full load at 0.8 power factor lagging(in volt)=')
Reg=(Re/V_2)*100
disp(Reg,'Percentage Regulation(in%)=')