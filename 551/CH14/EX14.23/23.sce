clc
COP=6.5;
W=50; //kW
h3a=201.45; //kJ/kg
h_f4=69.55; //kJ/kg
h1=h_f4;
h2=187.53; //kJ/kg
cp=0.6155; //kJ/kg
t3a=35; //0C

RC=W*COP; //Refrigerating capacity
Q1=h2-h_f4; //Heat extracted per kg of refrigerant
rate=RC/Q1; //Refrigerant flow rate
Q2=W/rate; //Heat input per kg
h=h2+Q2; //Enthalpy of vapour after compression
Q=h-h3a; //Superheat

t3=Q/cp+t3a;
disp("t3=")
disp(t3)
disp("°C")