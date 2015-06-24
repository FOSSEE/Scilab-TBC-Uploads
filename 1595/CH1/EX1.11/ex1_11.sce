//Introductory Topics :example 1-11 : (pg no. 37)
f=(12*10^3);
L=3*10^-3;
C=(0.1*10^-6);
R=30;
x=L*C;
y=sqrt(x);
z=(2*%pi*y);
a=(1/z);
Xl=(2*%pi*f*L);
Xc=(1/(2*%pi*f*C));
b=(Xl-Xc)^2;
c=R^2;
d=sqrt(c+b);
printf("\nfr = 1/2.pi.sqrt(LC) = %.f Hz",a);
//at 12kHz
printf("\nXL = 2.pi.f.L = %.f Ohm",Xl);
printf("\nXC = 1/2.pi.f.C = %.f Ohm",Xc);
printf("\nZ = sqrt(R^2+(XL-XC)^2) = %.1f Ohm",d);//impedance when f=12 Hz