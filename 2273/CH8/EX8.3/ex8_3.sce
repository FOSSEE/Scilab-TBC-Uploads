//find ratio of ground to mutual capacitance, system line voltage and string efficiency
clear;
clc;
//soltion
//given
V2=20;//kV
V3=25;//kV
k=poly(0,"k");
k=roots(V2*(1+3*k+k*k)-V3*(1+k));
k=0.13;//Considering only positive part
V1=V2/(1+k);
V=V1+V2+V3;
Se=V*100/(3*V3);
printf("K =%.2f \nSystem line voltage(V)= %.3fkV \nString Efficiency= %.1f percent",k,V,Se);
