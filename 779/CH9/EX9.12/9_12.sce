m = 0.02; d = 0.28; l = 0.305;
P1 = 0.6e06; P2 = 0.12e06;
// At 0.6MPa, t = 200 degree
v1 = 0.352; h1 = 2850.1;
V1 = m*v1;
Vd = (%pi/4)*d^2*l;
V2 = V1+Vd ; 
n = log(P1/P2)/log(V2/V1);
W12 = ((P1*V1)-(P2*V2))/(n-1);
disp(n,"The value of n is");
disp("J",W12,"The work done by the steam is")
v2 = V2/m;
vf = 0.0010476; vfg = 1.4271;
x2 = (v2-vf)/vfg ;
// At 0.12MPa
uf = 439.3; ug = 2512.0;
u2 = uf + (x2*(ug-uf));
u1 = h1-(P1*v1*1e-03);
Q12 = m*(u2-u1)+ (W12/1000);
disp("kJ",Q12,"The heat transfer is")
