//ques1
//Standard brayton cycle
clc
clear
//1-Inlet for compressor
//2-Exit for compressor
//T-Temperature at a state
//P-Pressure at a state
T1=288.2;//K
P2=1000;//kPa
P1=100;//kPa
k=1.4;
T2=T1*(P2/P1)^(1-1/k);//K
Cp=1.004;//Specific heat at constant pressure in kJ/kg
wc=Cp*(T2-T1);//compressor work in kJ/kg;
printf('Temperature T2 = %.1f K\n',T2);
printf(' Compressor work = %.1f kJ/kg \n',wc);
//3-Turbine Inlet
//4-Turbine Exit
P4=P1;
P3=P2;
T3=1373.2;//K
T4=T3*(P4/P3)^(1-1/k);//K
wt=Cp*(T3-T4);
wnet=wt-wc;
printf(' Temperature T3 = %.1f K\n',T3);
printf(' Temperature T4 = %.1f K\n',T4);
printf(' Turbine work = %.1f kJ/kg\n',wt);
printf(' Net work = %.1f kJ/kg\n',wt-wc);
//2-Also high temperature heat exchanger Inlet
//3-(-do-) Exit
qh=Cp*(T3-T2);//Heat of source in kJ/kg
//4-high temp heat exchanger inlet
//1-(-do-) Exit
ql=Cp*(T4-T1);//Heat of sink in kJ/kg
nth=wnet/qh;
printf(' Thermal Efficiency of cycle = %.1f percent',nth*100);