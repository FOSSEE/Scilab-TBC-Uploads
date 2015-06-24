// Calculating maximum permissible current through strain gauge, supply voltage
// and Power dissipation in series resistance 
clc;
R=100;
P=250*10^-3;
i=(P/R)^0.5;
disp(i,'maximum permissible current (A)=') 
ei=2*i*R;
disp(ei,'maximum supply voltage (V)=')
Rs=100;
Ps=10^2/Rs;
disp(Ps,'Power dissipation in series resistance (W)')
