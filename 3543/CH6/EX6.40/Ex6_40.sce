// Example 6.40
// Calculation of load resistance and bandwidth
// Page no 495

clc;
clear;
close;

//Given data
Cd=6*10^-12                         // Capacitance of pin photodiode
B=20*10^6;                         // Bandwidth
Ca=6*10^-12;                      // Input capacitance


// a)Load resistance
R=1/(2*%pi*B*Cd);
R=R*10^-3;
// b)Bandwidth
Bm=1/(2*%pi*(Ca+Ca)*R);
Bm=Bm*10^-9;



//Displaying results in the command window            
printf("\n Load resistance (in Kilo ohm)= %0.2f  ",R);
printf("\n Bandwidth(in MHz) = %0.0f  ",Bm);

// The answers vary due to round off error
