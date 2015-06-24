clc;

printf("\n Example 4.2\n");

l=30;//Length of the tube
d=150e-3;//Diameter of the tube
P1=0.4e3;//Initial Pressure
P2=0.13e3;//final Pressure
//X=e/d, Relative roughness
//Y=R/(rho*u^2) = 0.004
X=0.003;
Y=0.005;
v1=21.15e1;

G_A=poly([0],'G_A');
f=(G_A^2*log(P1/P2))+((P2^2-P1^2)/(2*P1*v1))+(4*(Y*l/d)*G_A^2);
A=roots(f);
printf("\n The approximate flow rate = %.2f kg/m^2 s",A(1));