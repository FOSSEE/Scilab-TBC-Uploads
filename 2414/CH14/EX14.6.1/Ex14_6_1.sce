clc;
close();
clear();
//page no 479
//prob no. 14.6;   //misprinted example no
d=.3;  //cm
D=1.02;  //cm
Er=2.25;  
x=log(D/d);   //variable
L=2*10^-7*x;
mprintf('(a)The inductance per unit length is, L = %.1f nH/m \n',L*10^9);
C=55.56*10^-12*Er/x;
mprintf(' (b)The capacitance per unit length is, C = %.2f nH/m \n',C*10^12);
R0=60/sqrt(Er)*x;
mprintf(' (c)The characteristic impedance is, R0 = %.3f ohm \n',R0);
c=3*10^8;
v=c/sqrt(Er);
mprintf(' (d)The velocity of propagation is, v = %i*10^8 m/s \n',v*10^-8);
