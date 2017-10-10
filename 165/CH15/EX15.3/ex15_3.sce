//Example 15.3
clc;

//Design a 2nd order LPF having a cutoff frequency of 2 kHz
fh=2000;        //Cutoff frequency in Hz
C2=3.3*10^-9;   //Assumed value of capacitor
C3=C2;
R=invr(2*%pi*fh*C2);
//Assume a std value of R
R=22*10^3;
R2=R;
R3=R;
R1=10000;            //Assumed
Rf=.560*R1;

printf('\nAssumed values of Capcitors C2 & C3 = %.2f nF\n',C2*10^9)
printf('\nValues of Resistors R2 & R3 = %.2f k ohm\n',R2/10^3)
printf('\nValues of Feedback Resistor Rf = %.2f k ohm\n',Rf/10^3)
printf('\nValues of Input Resistors R1 = %.2f k ohm\n',R1/10^3)