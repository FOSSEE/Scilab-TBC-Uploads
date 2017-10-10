// Example 6.33
// Calculation of a)load resistance and b)bandwidth
// Page no 495

clc;
clear;
close;

//Given data
Cd=5*10^-12                         // Capacitance of pin photodiode
B=10*10^6;                         // Bandwidth
Ca=10*10^-12;                      // Input capacitance


// a)Load resistance
R=1/(2*%pi*B*Cd);
R=R*10^-3;
// b)Bandwidth
Bm=1/(2*%pi*(Cd+Ca)*R);
Bm=Bm*10^-9;



//Displaying results in the command window            
printf("\n Wavelength of photodiode (in Kilo ohm)= %0.2f  ",R);
printf("\n Bandwidth(in MHz) = %0.3f  ",Bm);

// The answers vary due to round off error
