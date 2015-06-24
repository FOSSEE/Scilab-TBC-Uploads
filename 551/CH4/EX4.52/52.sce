clc
m=0.08; //kg
p=2*10^5; //Pa
V=0.10528; //m^3
h1=2706.3; //kJ/kg
h2=3071.8; //kJ/kg
v1=0.885; //m^3/kg
v2=V/m; //m^3/kg


disp("(i) Heat supplied")
Q=m*(h2-h1);
disp("Q=")
disp(Q)
disp("kJ")

disp("(ii) Work done")
W=p*(v2-v1);
W_total=m*W/10^3;
disp("Total work done = ")
disp(W_total)
disp("kJ")