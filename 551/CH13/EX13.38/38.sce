clc
n_turbine=0.85;
n_compressor=0.80;
T3=1148; //K
T1=300; //K
cp=1; //kJ/kg K
y=1.4;
p1=1; //bar
p2=4; //bar
C=42000; //kJ/kg K
n_cc=0.90;

T2=T1*(p2/p1)^((y-1)/y);

T2a=(T2-T1)/n_compressor + T1;

ratio=0.9*C/cp/(T3-T2a) - 1; //ratio=ma/mf
disp("A/F ratio =")
disp(ratio)