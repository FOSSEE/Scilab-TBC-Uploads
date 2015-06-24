clc
cp=1; //kJ/kg K
y=1.4;
C=41800; //kJ/kg
p1=1; //bar
T1=293; //K
p2=4; //bar
p4=p1;
p3=p2;
n_compressor=0.80;
n_turbine=0.85; 
ratio=90; //Air-Fuel ratio
m_a=3; //kg/s

disp("(i)Power developed ")
T2=T1*(p2/p1)^((y-1)/y);
T2a=(T2-T1)/n_compressor + T1;
T3=C/(1+ratio)/cp + T2a;
T4=T3*(p4/p3)^((y-1)/y);
T4a=T3-n_turbine*(T3-T4);

W_turbine=(ratio+1)/ratio*cp*(T3-T4a);
W_compressor=cp*(T2a-T1);
W_net=W_turbine-W_compressor;
Qs=1/ratio*C;

P=m_a*W_net;
disp("Power=")
disp(P)
disp("kW/kg of air")


disp("(ii) Thermal efficiency of cycle =")
n_thermal=W_net/Qs;
disp(n_thermal)
disp("%")