clc

disp("(i) The minimum pressure at which bleeding is necessary=")

//It would be assumed that the feed water heater is an open heater. Feed water is heated to 180°C. So psat at 180°C ~= 10 bar is the pressure at which the heater operates. Thus, the pressure at which bleeding is necessary is 10 bar.
p_min=10; //bar
disp(p_min)
disp("bar")

h1=3285; //kJ/kg
h2=2980; //kJ/kg
h3=3280; //kJ/kg
h4a=3072.5; //kJ/kg
h5=2210; //kJ/kg
h5a=2356.6; //kJ/kg

h_f6=163.4; //kJ/kg
h_f8=762.6; //kJ/kg
h2a=3045.6; //kJ/kg


disp("(ii) The quantity of steam bled per kg of flow at the turbine inlet =")
m=(h_f8-h_f6)/(h4a-h_f6);
disp(m)
disp("kg of steam flow at turbine inlet.")


disp("(iii) Cycle efficiency =")
n_cycle=((h1-h2a)+(h3-h4a)+(1-m)*(h4a-h5a))/((h1-h_f8) + (h3 - h2a))*100;
disp(n_cycle)
disp("%")