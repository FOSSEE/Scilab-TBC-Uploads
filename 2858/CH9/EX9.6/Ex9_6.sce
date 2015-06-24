//example 9.6
clc; funcprot(0);
pi=%pi;
R=0.6;
L1=10;
L2=20;
Gammasat=122.4;
l1=5;
Gamma=110;
C=0.68;
L=L1+L2;;
Gammaw=62.4;
Gamma1=Gammasat-Gammaw;//gammadash
Gammaav=(Gamma*L1+Gamma1*L2)/(L1+L2);
phi=35*pi/180;
Ka=(tan(pi/4-phi/2))^2;
sa=C*Ka*Gammaav*L;//sigmaa
sp=R*sa;//sigmap
deff('y=f(x)', 'y=x^2+50*x-1000');
[x]=fsolve(15,f);
D=x;
disp(D,"depth in ft");
R=L/D*(L-2*l1)/(2*L+D-2*l1);
printf("value of R=%.2f is OK\n",R);
//partb
F=sa*(L-R*D);
disp(F,"Force in lb/ft")
//partc
Mmax=0.5*sa*L^2*((1-R*D/L)^2-2*l1/L*(1-R*D/L));
disp(Mmax,"maximum moment lb-ft/ft");

