//Chapter 18
//Example 18_19
//Page 452

clear;clc;

mva=20;
kv=11;
xn=5;
x1=20;
x2=10;

Er=kv*1000/sqrt(3);
printf("Phase emf of red phase = %d V \n\n", Er);

//from the reactance diagram given in the text;
r_x1=x1/2;
r_x2=x2/2;
r_xn=30;

X1=r_x1*kv^2*10/mva/1000;
X2=r_x2*kv^2*10/mva/1000;
X0=r_xn*kv^2*10/mva/1000;

Ir=3*Er/(X1+X2+X0)/%i;

printf("X1 = %.3f ohm \n\n", X1);
printf("X2 = %.3f ohm \n\n", X2);
printf("X0 = %.3f ohm \n\n", X0);

printf("Fault current = j(%d) A \n\n", imag(Ir));
