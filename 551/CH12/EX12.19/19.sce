clc

h1=3450; //kJ/kg
h2=3050; //kJ/kg
h3=3560; //kJ/kg
h4=2300; //kJ/kg

h_f4=191.8; //kJ/kg

//From mollier diagram
x4=0.88;
disp("(i)Quality of steam at turbine exhaust =")
disp(x4)


n_cycle=((h1-h2) + (h3-h4))/((h1-h_f4) + (h3-h2));
disp("(ii) Cycle efficiency =")
disp(n_cycle)


SR=3600/((h1-h2) + (h3-h4));
disp("(iii) Steam rate in kg/kWh =")
disp(SR)
disp("kg/kWh")