//AC Circuits : example 4.87 :(pg 4.69 & 4.70)
f0=10^6;
C1=500*10^-12;
C2=600*10^-12;
C=500*10^-12;
x=((2*%pi*f0)^2);
L=(1/(x*C));
XL=(2*%pi*f0*L);
y=2*%pi*f0*C2;
XC=(1/y);
R=sqrt(((XL-XC)^2)/3);
x=sqrt(L/C);
Q0=((1/R)*x);
printf("\nf0= 1MHz \nC1=500pF \nC2=600pF \nC=500pF");//At resonance
printf("\nf0=1/2.pi.sqrt(LC)\nL=%.12f H",L);
printf("\nXL=2.pi.f0.L =%.2f Ohm",XL);
printf("\nXC=1/2.pi.f0.C \nXC=%.2f Ohm",XC);
printf("\nI=1/2.I0 \nV/Z=1/2.V/R \nZ=2R");
printf("\nsqrt((R^2)-(XL-XC)^2)=2R \nR=%.2f Ohm",R);//Resistance of Inductor
printf("\nQ0=1/R.sqrt(L/C) \n=%.f",Q0);

