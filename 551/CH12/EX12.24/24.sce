clc
t1=350; //0C
t_s=350; //0C

p2=7; //bar
p3=7; //bar
p4=0.4; //bar
t3=350; //0C

h1=2985; //kJ/kg
h2=2520; //kJ/kg
h3=3170; //kJ/kg
h4=2555; //kJ/kg

h_f2=697.1; //kJ/kg
h_f4=317.7; //kJ/kg

P=110*10^3; //kW

disp("(i) The ratio of steam bled to steam generated")
m=(h_f2-h_f4)/(h2-h_f4);

ratio=1/m;
disp("ratio=")
disp(ratio)


disp("(ii) The boiler generating capacity =")
m_s=P/(h1-h2+(1-m)*(h3-h4))*3600/1000; //tonnes/hour
disp(m_s)
disp("tonnes/hour")


disp("(iii) Thermal efficiency of the cycle =")
n_thermal=((h1-h2) + (1-m)*(h3-h4))/((h1-h_f2)+(1-m)*(h3-h2));
disp(n_thermal)