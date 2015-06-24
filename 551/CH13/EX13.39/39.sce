clc
cp=1.005; //kJ/kg K
y1=1.4;
y2=1.333;
p1=1; //bar
p4=p1;
T1=300; //K
p2=6.2; //bar
p3=p2;
n_compressor=0.88;
C=44186; //kJ/kg
ratio=0.017; //Fuel-air ratio; kJ/kg of air
n_turbine=0.9; //
cpg=1.147;

T2=T1*(p2/p1)^((y1-1)/y1);
T2a=(T2-T1)/n_compressor + T1; //T2'

T3=ratio*C/(1+ratio)/cp + T2a;
T4=T3*(p4/p3)^((y2-1)/y2);
T4a=T3-n_turbine*(T3-T4);
W_compressor=cp*(T2a-T1);
W_turbine=cpg*(T3-T4a);
W_net=W_turbine-W_compressor;
Qs=ratio*C;

n_th=W_net/Qs*100;
disp("Thermal efficiency =")
disp(n_th)
disp("%")