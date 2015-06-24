clc
h1=3100; //kJ/kg
h2=2100; //kJ/kg
h3=2500; //kJ/kg
h_f2=570.9; //kJ/kg
h_f5=125; //kJ/kg
h_f2=570.9; //kJ/kg
a=11200; //Quantity of bled steam in kg/h

m=(h_f2-h_f5)/(h2-h_f5);

S=a/m; //Steam supplied to the turbine per hour

W_net=(h1-h3) + (1-m)*(h3-h2);

P=W_net*S/3600; //Power developed by the turbine
disp("Power developed by the turbine=")
disp(P)
disp("kW")