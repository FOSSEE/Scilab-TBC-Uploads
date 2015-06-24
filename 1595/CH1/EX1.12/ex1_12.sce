//Introductory Topics :example 1-12 : (pg no. 38 & 39)
R1=20;
R2=1;
L=1*10^-3;
C=0.4*10^-6;
ein=50*10^-3;
f=12*10^3;
x=sqrt(L*C);
y=(1/(2*%pi*x));
eo= ein*(R2/(R2+R1));
XL=(2*%pi*f*L);
XC=(1/(2*%pi*f*C));
a=(R1+R2)^2;
b=(XL-XC)^2;
z=sqrt(a+b);
zo=sqrt((R2^2)+b);
m=(ein*(zo/z));
printf("\nfr = 1/2.pi.sqrt(LC) = %.f Hz",y);//resonant frequency
printf("\neout = ein *(R2/R1+R2) = %.5f V",eo);//o/p voltage at resonance
// at f=12 kHz
printf("\nXL = 2.pi.f.L = %.1f Ohm",XL);
printf("\nXC = 1/2.pi.f.C = %.1f Ohm",XC);
printf("\nZtotal = sqrt((R1+R2)^2 +(XL-XC)^2) = %.1f Ohm",z);
printf("\nZout = sqrt(R2^2)+(XL-XC)^2 = %.1f Ohm",zo);
printf("\neout = %.4f V",m);//o/p voltage at 12kHz


