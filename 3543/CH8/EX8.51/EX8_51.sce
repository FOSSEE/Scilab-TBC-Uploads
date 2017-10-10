// Example 7.42
// Calculation of a)Bit rate of communication system  b)Bit duration c)Time period
// Page no 504

clc;
clear;
close;

//Given data
f=8*10^3;                    // Power launched in port 1
P2=0.082*10^-6;              // Power launched in port 2
P3=47*10^-6;                // Power launched in port 3 
P4=52*10^-6;                // Power launched in port 4

// a)Bit rate of communication system
c=32*8;
B=f*c; 
B=B*10^-6;
// b)Bit duration
D=1/B;
D=D*10*10^2;
P=8*D;


// c)Time period
T=32*P;
T=T*10^-3;


//Displaying results in the command window            
printf("\n Bit rate of communication system(in Mb/s) = %0.3f  ",B);
printf("\n Bit duration(in ns) = %0.0f  ",D);
printf("\n Time period(in micro sec)= %0.0f  ",T);

// The answers vary due to round off error
