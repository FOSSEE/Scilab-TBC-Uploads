//Introductory Topics :example 1-13 : (pg no. 40 & 41)
a=460*10^3;
b=450*10^3;
BW=a-b;
fr=455*10^3;
Q=(fr/BW);
C=0.001*10^-6;
x=(fr*2*%pi);
y=(1/x)^2;
z=y/C;
R=(2*%pi*z*BW);
//part(a) : bandwidth
printf("\nBW = fhc-flc = %.f Hz",BW);
//part(b) : Quality factor
//filter's peak o/p occurs at 455kHz
printf("\nQ = fr/BW = %.1f kHz",Q);
//part(c) : value of inductance
printf("\nfr = 1/2.pi.sqrt(LC) = %.5f H",z);
//part(d): total circuit resistance
printf("\nBW = R/2.pi.L \nR = %.2f Ohm",R);