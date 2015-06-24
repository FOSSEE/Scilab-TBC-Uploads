clc
RE=5*14000/3600; //Total refrigeration produced in kg/s
h2=183.19; //kJ/kg
h3=209.41; //kJ/kg
h4=74.59; //kJ/kg
h1=h4;

disp("(i) The refrigerant flow rate")
RE_net=h2-h1; //Net refrigerating effect produced per kg
m=RE/RE_net; 
disp("Refrigerant flow rate =")
disp(m)
disp("kg/s")


disp("(ii) The C.O.P. =")
COP=(h2-h1)/(h3-h2);
disp(COP)


disp("(iii) The power required to drive the compressor =")
P=m*(h3-h2);
disp(P)
disp("kW")


disp("(iv) The rate of heat rejection to the condenser =")
rate=m*(h3-h4);
disp(rate)
disp("kW")