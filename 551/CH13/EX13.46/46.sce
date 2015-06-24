clc
T1=288; //K
rp=4; //rp=p2/p1=p3/p4
n_compressor=0.82;
e=0.78; //Effectiveness of the heat exchanger
n_turbine=0.70;
T3=873; //K
y=1.4;
R=0.287;

T2=T1*(rp)^((y-1)/y);
T2a=(T2-T1)/n_compressor + T1;
T4=T3/rp^((y-1)/y);
T4a=T3-n_turbine*(T3-T4);

cp=R*y/(y-1);
W_compressor=cp*(T2a-T1);
W_turbine=cp*(T3-T4a);
W_net=W_turbine-W_compressor;

T5=e*(T4a-T2a) + T2a;
Qs=cp*(T3-T5);

n_cycle=W_net/Qs*100;
disp("Efficiency =")
disp(n_cycle)
disp("%")