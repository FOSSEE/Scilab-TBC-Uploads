// Example4.9  // Determine the non-inverting input voltage
clc;
clear;
close;
R1 = 10 ; //kilo ohm  // input resistance
R2 = 25 ; //kilo ohm // feedback resistance
Voh = 10 ; // volt //output voltage
Vol = -10 ; // volt // output voltage

// upper voltage
V = (R1/(R1+R2)*Voh) ;
disp('  The upper voltage is = '+string(V)+' V ');

// Lower voltage
V = (R1/(R1+R2)*Vol) ;
disp('  The lower voltage is = '+string(V)+' V ');

