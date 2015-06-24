clc
p1=1; //bar
p2=5; //bar
p3=4.9; //bar
p4=1; //bar
T1=293; //K
T3=953; //K
n_compressor=0.85;
n_turbine=0.80;
n_combustion=0.85;
y=1.4;
cp=1.024; //kJ/kg K
P=1065; //kW

disp("(i) The quantity of air circulation")
T2=T1*(p2/p1)^((y-1)/y);
T2a=(T2-T1)/n_compressor + T1;
T4=T3*(p4/p3)^((y-1)/y);
T4a=T3-n_turbine*(T3-T4);

W_compressor=cp*(T2a-T1);
W_turbine=cp*(T3-T4a);
W_net=W_turbine-W_compressor;

m_a=P/W_net;
disp("m_a =")
disp(m_a)
disp("kg")


disp("(ii) Heat supplied per kg of air circulation =")
Qs=cp*(T3-T2a)/n_combustion;
disp(Qs)
disp("kJ/kg")


disp("(iii) Thermal efficiency of the cycle =")
n_thermal=W_net/Qs*100;
disp(n_thermal)
disp("%")