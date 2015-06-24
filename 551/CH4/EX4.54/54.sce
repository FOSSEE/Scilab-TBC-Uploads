clc
p1=7*10^5; //Pa
p2=1.5*10^5; //Pa
Q=420; //kJ/kg
uf=696; //kJ/kg
x=0.95;
ug=2573; //kJ/kg
u_f2=2580; //kJ/kg
u_g2=2856; //kJ/kg
x2=15/50;
h_f1=697.1; //kJ/kg
h_fg1=2064.9; //kJ.kg
h_f2=2772.6; //kJ/kg
h_g2=2872.9; //kJ/kg


disp("(i) Change of internal energy")
u1=(1-x)*uf + x*ug;
u2=2602.8; //kJ/kg
du=u2-u1;
disp("du=")
disp(du)
disp("kJ/kg")


disp("(ii) Change in enthalpy")
h1=h_f1+x*h_fg1;
h2=h_f2+x2*(h_g2-h_f2);
dh=h2-h1;
disp("dh=")
disp(dh)
disp("kJ/kg")


disp("(iii) Work done = ")
W=Q-du;
disp("W=")
disp(W)
disp("kJ/kg")