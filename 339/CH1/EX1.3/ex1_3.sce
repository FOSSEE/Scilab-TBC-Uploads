f=10^4:10^5:10^10;
w=2*%pi.*f;
mu0=4*%pi*10^-7;
l=2*2.5*10^-2;
a=2.032*10^-4;
temp=log(2*l/a)/log(%e);
lex=mu0*l*(temp-1)/(2*%pi); //external inductance
r=2*10^3;                   // resistance
c=5*10^-12;                 //capacitance
z=w*lex*%i+1 ./(w*c*%i+1/r); //impedance
plot2d("gll",f,abs(z));
title("High frequency impedance behaviour of a 2k ohm metal film resistor ");
xlabel('Frequency  (f) in Hz');
ylabel('Absolute Impedance (|Z|) in ohms');