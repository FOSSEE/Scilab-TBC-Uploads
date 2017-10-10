//Example 11.10(a)
clc;

//Given values of bridge elements
R1=1000;
C1=0.5*10^-6;
R2=2000;
C3=0.5*10^-6;
f=1000;        //frequency in Hz
//Value of Rx for Schering's Bridge
Rx=C1*R2/C3;
//Value of Cx for Schering's Bridge
Cx=C3*R1/R2;
//Dissipation factor
D=2*%pi*f*Cx*Rx;

printf('\nValue of resistence is %d ohm',Rx)
printf('\nValue of Capacitance is %.8f F',Cx)
printf('\nDissipation factor for Schering bridge is %.4f ',D )