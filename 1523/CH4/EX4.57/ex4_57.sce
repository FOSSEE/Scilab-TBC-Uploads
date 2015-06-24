//AC Circuits :example 4.57 :(pg 4.46)
j=%i;
f=50;
L=0.22;
R1=3;
Z=3.8+j*6.4;
XL=2*%pi*f*L;
R2=3.8;
R=R2-R1;
X=6.4;
XC=XL-X;
C=(1/(2*%pi*f*XC));
printf("\nZ=(3.8+j*6.4) Ohm");
printf("\nXL=2*pi*f*L=%.2f Ohm",XL);
printf("\nZ=(3+j69.12+R-jXC) \n=(3+R)+j(69.12-XC)");
printf("\n3+R=3.8 \nR=%.1f Ohm",R);
printf("\nXC=%.2f Ohm",XC);
printf("\nXC=1/2.pi.f.C \nC=%.e F",C);