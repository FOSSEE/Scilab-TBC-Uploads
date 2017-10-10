// Example 6.6
// Calculation of the single-pass gain and 3-dB bandwidth
// Page no 268

clc;
clear;
close;

//Given data

c1=3*10^8;                // Velocity of light
f=7*10^9;                // Cut off frequency
L=500*10^-6;             // Input power
Gp=15;                   // Peak gain
n=3.2;
Gs=2.52;
R=0.32;
a=0.1024;
b=-0.6546;
c=1;

// The single-pass gain

x1 =( -1*b+ sqrt ((b ^2) -4*a*c)) /(2* a); // 1 s t r o o t
x2 =( -1*b- sqrt ((b ^2) -4*a*c)) /(2* a); // 2nd r o o t

// The 3-dB bandwidth
G=10^(Gp/10);
x=(1-(R*x2))/(2*sqrt(R*x2));
f=(c1/(%pi*L*n))*asin(x);
// f=f*10^-9; 

// Displaying results in the command window            

printf ( 'Single pass gain Gs= %0.2f   or' , x1);
printf ( ' \n Single pass gain Gs= %0.2f ' , x2);
printf("\n The the 3-dB bandwidth = %0.2f GHz ",f*10^-9);


// The answers vary due to round off error
