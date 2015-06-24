//find system line voltage and string efficiency
clear;
clc;
//soltion
//given
V2=20;//kV
V3=30;//kV
k=poly(0,"k");
k=roots(V2*(1+3*k+k*k)-V3*(1+k));
k=0.28;//Considering only positive part
V1=V2/(1+k);
V4=V1*(1+6*k+5*k^2+k^3);
V=V1+V2+V3+V4;
Se=V*100/(4*V4);
printf("System line voltage(V)= %.3f kV \nString Efficiency= %.3f percent",sqrt(3)*V,Se);
