clc
T1=300; //K
p1=1; //bar
rp=6.25;
T3=1073; //K
n_comp=0.8;
n_turbine=0.8;
cp=1.005; //kJ/kg K
y=1.4;

T2=T1*(rp)^((y-1)/y);

//Let T2'=T2a
T2a=(T2-T1)/n_comp + T1;

W_comp=cp*(T2a-T1);
disp("Compressor work =")
disp(W_comp)
disp("kJ/kg")

T4=T3/rp^((y-1)/y);
T4a=T3-n_turbine*(T3-T4);

W_turbine=cp*(T3-T4a);
disp("Turbine work =")
disp(W_turbine)
disp("kJ/kg")

Q_s=cp*(T3-T2a);
disp("Heat supplied =")
disp(Q_s)
disp("kJ/kg")

W_net=W_turbine - W_comp;

n_cycle=W_net/Q_s*100;
disp("n_cycle")
disp(n_cycle)
disp("%")

t4a=T4a-273;
disp("Turbine exhaust temperature =")
disp(t4a)
disp("0C")