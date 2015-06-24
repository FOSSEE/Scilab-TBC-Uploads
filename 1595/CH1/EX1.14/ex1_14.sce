//Introductory Topics :example 1-14 : (pg no. 42)
R=2;
L=3*10^-3;
C=0.47*10^-6;
x=(2*%pi*sqrt(L*C));
y=1/x;
XL=(2*%pi*y*L);
Q=(XL/R);
Z=((Q^2)*R);
BW=(R/(2*%pi*L));
//part(a) : resonant frequency
printf("\nfr = 1/2.pi.sqrt(LC) = %.f Hz",y);
//part(b) : Quality factor
printf("\nQ = XL/R \n XL =2.pi.f.L \nXL = %.1f Ohm",XL);
printf("\nQ = %.1f",Q);
//part(c) : maximum impedance
printf("\nZmax = Q^2*R = %.f Ohm",Z);
//part(d) : Bandwidth
printf("\nBW = R/2.pi.L = %.f Hz",BW);
