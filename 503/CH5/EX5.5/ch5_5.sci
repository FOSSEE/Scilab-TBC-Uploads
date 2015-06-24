// to calculate  useful flux/pole and ares of pole shoe

clc;
p=1500*1000;    //power
v=600;
I_a=p/v;
cu=25*1000;    //copper losses
R_a=cu/I_a^2;
E_a=v+I_a*R_a;
n=200;
Z=2500;
p=16;
A=16;
phi=E_a*60*A/(p*n*Z);
disp(phi,'flux/pole(Wb)');
fd=0.85;    //flux density
a=phi/fd;
disp(a,'area of pole shoe(m*m)');