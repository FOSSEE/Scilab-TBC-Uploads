clc
Q1=500; //total heating requirement of 500 kJ/min
n_compressor=0.8;
s1=0.7035; //kJ/kg K
s2=0.6799; //kJ/kg K
T2=322.31; //K
cp=0.7; //kJ/kg K
h_v2=206.24; //kJ/kg
h_l2=84.21; //kJ/kg
h_v1=182.07 //kJ/kg

Q2=Q1/n_compressor; //Heat rejected by the cycle

//Entropy of dry saturated vapour at 2 bar= Entropy of superheated vapour at 12 bar
T=T2*%e^((s1-s2)/cp);

H=h_v2+cp*(T-T2); //Enthalpy of superheated vapour at 12 bar
Q3=H-h_l2; //Heat rejected per cycle
m=Q2/Q3; //kg/min
W=m*(H-h_v1)/60; //kW
W_actual=W/n_compressor;
disp("Power =")
disp(W_actual)
disp("kW")