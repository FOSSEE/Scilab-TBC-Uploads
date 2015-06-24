//AC Circuits : example 4.89 :(pg 4.72 & 4.73)
R=20;
L=200*10^-6;
f=10^6;
V=230;
Rs=8000;
XL=2*%pi*f*L;
x=((2*%pi*f)^2);
y=((R/L)^2);
C=(1/((x+y)*L));
Q=((2*%pi*f*L)/R);
Z=(L/(C*R));
ZT=(Rs+Z);
IT=(V/ZT);
printf("\nR=20 Ohm \nL=200uH \nf=10^6 \nV=230 V \nRs=8000 Ohm \nXL=2.pi.f.L =%.1f Ohm",XL);
printf("\nf0=1/2.pi.sqrt(1/LC-R^2/L^2) \nC=%.e F",C);
printf("\nQ0=2.pi.f.L/R =%.2f",Q);//quality factor
printf("\nZ=L/CR \n=%.f Ohm",Z);//dynamic impedance
printf("\nZt=%.f Ohm",ZT);//total equivalent Z at resonance
printf("\nIt=%.e A",IT);//total ckt current