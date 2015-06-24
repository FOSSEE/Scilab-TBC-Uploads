
//Example 1.66// percentage error
clc;
clear;
close;
//given data :
alfa_c=.4/100; // in per degree celcius
alfa_m=0.015/100; //  in per degree celcius
Rm=5; // in ohm
Im=0.015; // in A
I=100; // in A
Ish=I-Im;
Vsh=Im*Rm;
Rsh=Vsh/Ish;
a=20; // in degree celcius
Rsh1=Rsh*(1+(a*alfa_m)); // the shunt resistance after a rise of 20 degree celcius
R1=5; // internal resistance in ohm
R2=1; // copper resistor in ohm
R3=4; // manganin swamping resistor in ohm
Ri=R1*(1+20*alfa_c);
// current through the instrument corresponding to 100 A
I1=(Rsh1/(Ri+Rsh1))*100; 
Ii=(I1*I)/Im;
Pe1=I-Ii;
Ri1=(R2*(1+20*alfa_c))+(R3*(1+20*alfa_m));
 // instrument current with a line current of 100 A
Il=(Rsh1/(Ri1+Rsh1))*100;
Ir=Il*(100/Im);
Pe2=100-Ir; 
disp(Pe1,"the percentage error,Pe1(low) = ")
disp(Pe2,"the percentage error,Pe2(low) = ")
