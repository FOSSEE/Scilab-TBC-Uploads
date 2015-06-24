// chapter 9
// example 9.3
// fig. 9.5
// Determine rms load current at fundamental frequency, rms value of load current, power output and average supply current
// page-550
clear;
clc;
// given
Edc=220; // in V (dc source)
R=10; // in ohm
L=10; // in mH
C=52; // in uF
f=400; // in Hz
// calculate
L=L*1E-3; // changing unit from mH to H
C=C*1E-6; // changing unit from uF to F
X_L=2*%pi*f*L; // calculation of inductive reactance
X_C=1/(2*%pi*f*C); // calculation of inductive reactance
I=0; // intialisation of variable for rms load current
// since Impedence offered to the nth harmonic component Zn=sqrt(R^2+(n*X_L-X_C/n)^2)
printf("\nn\t\tZn\t\t\tIn");
for n=1:2:9
    Zn=sqrt(R^2+(n*X_L-X_C/n)^2); // calculation of Impedence offered to the nth harmonic component
    En=0.9*Edc/n; // calculation of rms value of the nth harmonic component of the output voltage
    In=En/Zn; // calculation of rms value of nth harmonic component of the current
    printf("\n%.f\t\t%.2f ohm\t\t%.3f A",n,Zn,In);
    I=I+In^2;
end
I=sqrt(I);
printf("\n\nThe rms value of load current is \t I=%.2f A",I);
P0=I^2*R; // calculation of output power
Iav=P0/Edc; // calculation of average supply current
printf("\n\nThe output power is \t\t\t P0=%.2f W",P0);
printf("\n\nThe average supply current is \t\t Iav=%.2f A",Iav);
// Note: The answer varies slightly due to precise calculation