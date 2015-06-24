clc

h0=3115.3; //kJ/kg
h1=2720; //kJ/kg
h2=2450; //kJ/kg
h3=2120; //kJ/kg

h_f1=640.1; //kJ/kg
h_f2=417.5; //kJ/kg
h_f3=173.9; //kJ/kg

m1=(h_f1-h_f2)/(h1-h_f1);
disp("m1=")
disp(m1)
disp("kJ/kg")

m2=((h_f2-h_f3)-m1*(h_f1-h_f3))/(h2-h_f3);
disp("m2=")
disp(m2)
disp("kJ/kg")

W=h0-h1 + (1-m1)*(h1-h2) + (1-m1-m2)*(h2-h3);
Q=h0-h_f1;

n=W/Q;
disp("Thermal Efficiency of the cycle=")
disp(n)