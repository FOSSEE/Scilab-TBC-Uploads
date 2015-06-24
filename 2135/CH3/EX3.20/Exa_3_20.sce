//Exa 3.20
clc;
clear;
close;
format('v',5);

//Given Data :
VcByVa=14;//Overall expansion ratio
T1=257+273;//K
T2=27+273;//K
Gamma=1.4;
Ta=T1;//K
Tb=T1;//K
Tc=T2;//K
Td=T2;//K
VcByVb=(Tb/Tc)^(1/(Gamma-1));//Expansion ratio for Adiabatic Process : 
disp(VcByVb,"Expansion ratio for adiabatic process : ");
VbByVa=VcByVa/VcByVb;//Expansion ratio for Isothermal Process : 
disp(VbByVa,"Expansion ratio for Isothermal process : ");
Eta=(1-T2/T1)*100;//%
disp(Eta,"Thermal Efficiency of carnot cycle in % : ");
