clc
te=-10; //0C
tc=40; //0C
h3=220; //kJ/kg
h2=183.1; //kJ/kg
h1=74.53; //kJ/kg
h_f4=26.85; //kJ/kg
m=1; //kg

disp("(i) The C.O.P. the cycle =")
COP=(h2-h1)/(h3-h2);
disp(COP)

disp("(ii) Refrigerating capacity =")
RC=m*(h2-h1);
disp(RC)
disp("kJ/min")

disp("Compressor power =")
CP=m*(h3-h2)/60;
disp(CP)
disp("kJ/s")