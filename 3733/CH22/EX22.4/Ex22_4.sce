// Example 22_4
clc;funcprot(0);
//Given data
p_1=90;// bar
T_1=480;// °C
p_2=12;// bar
p_3=0.07;// bar
m=1;// Steam flow rate in kg/sec

//Calculation
//From h-s chart:
h_1=3333.5;// kJ/kg
h_2=2815;// kJ/kg
h_3=3425.5;// kJ/kg
h_4=2364;// kJ/kg
//From steam tables at p=0.07 bar 
h_f5=161.8;// kJ/kg
v_sw1=0.001013;// m^3/kg
h_6=h_f5+((v_sw1*(p_1-p_3)*10^5)/(1000*m));// kJ/kg
W_p=(h_6-h_f5);// Pump work in kJ/kg
W_net=(h_1-h_2)+((h_3-h_4))-W_p;// Net Work done in kJ/kg
P=W_net*m;// Power generating capacity of the plant in kW
H_s=(h_1-h_6)+(h_3-h_2);// Heat supplied per kg of steam in kJ/kg
n=(W_net/H_s)*100;// Efficiency of the cycle
printf('\nEfficiency of the cycle=%0.1f percentage \nNet work done per kg steam=%0.1f kJ/kg',n,W_net);
// The answer vary due to round off error
