//Example 15.7
clc;

fh=100;            //in Hz
fl=1000;           //in Hz
C=0.01*10^-6;      //Assumed
R1=10000;          //Assumed
Rf=R1;
R2=R1;
R3=R1;
R4=R1;

//For a LPF
R=invr(2*%pi*fh*C);
printf('\nValue of Resistor R for a LPF = %d k ohm\n',R/1000)

//For a HPF
R=invr(2*%pi*fl*C);
printf('\nValue of Resistor R for a HPF = %.1f k ohm\n',R/1000)

printf('\nValue of Resistor R1 & Rf = %.1f k ohm\n',R1/1000)

Rom=invr(invr(R2)+invr(R3)+invr(R4));
printf('\nValue of Resistor Rom = %.1f k ohm\n',Rom/1000)