clc;
m_EtOH=46;
aof=1/m_EtOH;
m_a=28.96;
AF=8.957;
aoa=AF/m_a;

Total=aof+aoa;

R=8314.5;
T=288;
p=1.013*10^5;
V=Total*R*T/p;

NCVf=27.8;
NCVm=NCVf/V;

disp("MJ/m^3",NCVm,"calorific value of the combustion mixture is:");
