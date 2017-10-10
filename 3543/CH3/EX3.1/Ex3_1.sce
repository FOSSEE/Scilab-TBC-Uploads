//Calculation of barrier potential
// Example 3.1 
// Page no 80
clc;
clear all;
close;


//Given data
p=5;                        // Resistivity of p-region
n=2;                        // Resistivity of n-region
mu=3900;
k=0.026;                    //Boltzmann constant
ni=2.5*10^13;              //Density of the electron hole pair
e=1.6*10^-19;              //charge of electron
 
//Barrier potential calculation
r0=(1/p);          // Reflection at the fiber air interface 
r1=(1/n);
m=r1/(mu*e);
p=6.5*10^14;       //Density of hole in p -region
Vb=k*log(p*m/ni^2);

//Displaying the result in command window
printf("\n Barrier potential(in V) = %0.3f",Vb);

// The answers vary due to round off error
