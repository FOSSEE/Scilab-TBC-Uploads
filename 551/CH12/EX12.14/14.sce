clc

//At 3 bar
t_s1=133.5; //0C
h_f1=561.4; //kJ/kg

//At 0.04 bar
t_s2=29; //0C
h_f2=121.5; //0C

h0=3231; //kJ/kg
h1=2700; //kJ/kg
h2=2085; //kJ/kg

t1=130; //0C
t2=27; //0C
c=4.186;

disp("(i) Mass of steam used")
m1=c*(t1-t2)/(h1-h_f2);
disp("m1=")
disp(m1)
disp("kg")


disp("(ii) Thermal efficiency of the cycle")
W=(h0-h1)+(1-m1)*(h1-h2);
Q=h0-c*t1;

n_thermal=W/Q;
disp("n_thermal=")
disp(n_thermal)
