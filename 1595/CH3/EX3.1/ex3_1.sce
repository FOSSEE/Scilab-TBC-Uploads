// Amplitude Modulation-Reception : example 3-1 : (pg 120)
fr=550*10^3;
L=10*10^-6;
fr1=1550*10^3;
a=fr*2*%pi;
x=fr1*2*%pi;
b=1/a;
y=1/x;
C1=((b)^2/L);
C2=((y)^2/L);
fr2=1100*10^3;
BW=10*10^3;
Q=(fr2/BW);
BW1=(fr1/Q);
BW2=(fr/Q);
//part(a) : calculate C at 550kHz
printf("\nfr = 1/2.pi.(LC) \nC1= %.12f F",C1);
//at 1550 kHz
printf("\nC2 = %.11f F",C2);
printf("\nrequired range of capacitance is from 1.06 to 8.37 nF");
//part(b) : Quality factor
printf("\nQ = fr/BW \nQ = %.f Hz",Q);
//part(c) : Q at 1550 kHz
printf("\nBW = fr/Q \nBW = %.f Hz",BW1);
// Q at 550 kHz
printf("\nBW = %.f Hz",BW2);