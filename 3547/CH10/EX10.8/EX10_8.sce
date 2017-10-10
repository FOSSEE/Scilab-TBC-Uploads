// Example 10.8
// Calculation of the Stokes signal power at the fiber output
// Page no 480

clc;
clear;
close;

//Given data
p1=20;                       // Input power pump
ps=-10;                      // Input Stokes’s signal power
alpha=0.08;
L=2;                        // Length of fiber
alpha1=0.046;
A=40*10^-12;               // Effective area of fiber
g=1*10^-13;                // Raman coefficient of the fiber

// The Stokes signal power at the fiber output
p1=10^(p1/10);
ps=10^(ps/10);
Le=(1-exp(-alpha*L))/alpha;
s=(g*p1*Le)/A;
d=alpha1*L;
pd=ps*%e^(-d+s);



// Displaying results in the command window            
printf("\n The Stokes signal power at the fiber output  = %0.15f mW ",pd);


