clc
p1=7*10^5; //N/m^2
x1=0.98;
p2=0.34*10^5; //N/m^2
vg=0.273; //m^3/kg
n=1.1;
v_g2=4.65; //m^3/kg
u_f1=696; //kJ/kg
u_g1=2573; //kJ/kg
u_f2=302; //kJ/kg
u_g2=2472; //kJ/kg


v1=x1*vg;
v2=v1*(p1/p2)^(1/n);
x2=v2/v_g2;


disp("(i) Work done by the steam during the process")
W=(p1*v1-p2*v2)/(n-1)/10^3; //kJ/kg
disp("W=")
disp(W)
disp("kJ/kg")


disp("(ii) Heat transferred")
u1=(1-x1)*u_f1+x1*u_g1;
u2=(1-x2)*u_f2+x2*u_g2;
Q=u2-u1 + W;
disp("Q=")
disp(Q)
disp("kJ/kg")