clc
p1=5.5*10^5; //Pa
x1=1;
p2=0.75*10^5; //Pa
v1=0.3427; //m^3/kg
v2=p1*v1/p2;
// Since v2 > vg (at 0.75 bar), therefore, the steam is superheated at state 2.
u2=2567.25; //kJ/kg
u1=2565; //kJ/kg
du=u2-u1; //kJ/kg
C=p1*v1;

disp("Work done = ")
W=integrate('C/v', 'v', v1,v2)
disp("N-m/kg")


disp("Heat supplied = ")
Q=du+W/10^3;
disp(Q)
disp("kJ/kg")