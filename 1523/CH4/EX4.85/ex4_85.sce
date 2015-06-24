//AC Circuits : example 4.85 :(pg 4.68)
R=500;
f1=100;
f2=10*10^3;
BW=f2-f1;
f0=((f1+f2)/2);
L=(R/(2*%pi*BW));
XL0=(2*%pi*f0*L);
C=(1/(2*%pi*f0*XL0));
Q0=((1/R)*(sqrt(L/C)));
printf("\nR= 500 Ohm \nf1 = 100 Hz \nf2=10kHz \nBW= f2-f1 =%.f Hz",BW);
printf("\nf1=f0-BW/2 ------(i) \nf2=f0+BW/2 ------(ii) \nf1+f2 =2f0 \nf0=(f1+f2)/2 =%.f Hz",f0);
printf("\nBW=R/2.pi.f0.L \nL=%.6f H",L);
printf("\nXL0=2.pi.f0.L =%.2f Ohm",XL0);
printf("\nXL0=XC0 =%.2f Ohm",XL0);//at resonance
printf("\nXC0 =1/2.pi.f0.C \nC=%.e F",C);
printf("\nQ0=(1/R*sqrt(L/C)) =%.4f",Q0);
