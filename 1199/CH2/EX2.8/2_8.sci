// 2.8
Cd=0.6;
H=0.5;
dH=0.01;
g=9.81;
Q=(8/15)*Cd*(2*g)^0.5*(H)^(2.5);
dQ=(2.5*dH/H)*Q;
printf("Uncertinity in discharge = %.4f m3/s",dQ)
