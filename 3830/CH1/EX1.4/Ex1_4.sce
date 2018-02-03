// Exa 1.4

clc;
clear;

// Given

S = 10*10^3; // Sensitivity of voltmeter in Ohms/Volt
V = 75; // Reading in Volts
Vmax = 100; // Max voltage in Volts
I = 1.5*10^-3; // reading in Amp

// Solution

printf('Consider Fig.1.10, it shows Rm as meter of voltmeter drawing some current \n Thus, loading of the source happens i.e, loading effect \n');
Rapparent = V/I;
Rm = Vmax * S;
// Rapparent = parallel combination of Rm and Rx
// Therefore Rx can be given as
Rx = (1/Rapparent - 1/Rm)^-1;
printf(' True value of Rx = %.2f K Ohms \n',Rx);

Error = 100* (Rx-Rapparent)/Rx ; // Error in percent
printf(' The percentage error due to loading effect = %.1f percent \n',Error); 

//The answers vary due to round off error
