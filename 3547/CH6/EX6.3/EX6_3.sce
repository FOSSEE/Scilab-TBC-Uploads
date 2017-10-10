// Example 6.3
// Calculation of the (a) the variance of the signal–ASE beat noise current, (b) the variance of the ASE–ASE beat noise current, and (c) the total variance.
// Page no 257

clc;
clear;
close;

//Given data

G=30;       // Gain

nsp=5;
R=0.8;
f1=16*10^9;
fe=9*10^9;
//Pi1=-60;
c=3*10^8;             // Velocity of light
h=6.63*10^-34        // Planck constant
lambda=1530*10^-9;   // Wavelegth
Pi1=-27;            // Input power
Pi2=-60;
f0=16*10^9;


//(a) The variance of the signal–ASE beat noise current for Pin=-27dBm
Po=G+Pi1;
Po=10^(Po/10);
Po=Po*10^-3;
G=10^(G/10);
f=c/lambda;
r=nsp*h*f*(G-1);
B=8*10^9;
//B=min(f/2,fe);
r0=4*R^2*Po*r*B;
//r0=r0*10^12;

//(b) The variance of the ASE–ASE beat noise current

r1=R^2*r^2*((2*f0)-fe)*fe;

//r1=r1*10^11;
// (c) The total variance.

rt=r0+r1;

// Displaying results in the command window            
printf("\n (a) The variance of the signal–ASE beat noise current for Pin=-27dBm");

printf("\n The variance of the signal–ASE beat noise current = %0.2f x 10^-8 A^2",r0*10^8);
printf("\n The variance of the ASE–ASE beat noise current = %0.2f x 10^-11 A^2",r1*10^11);

printf("\n The total variance = %0.3f x 10^-8 A^2",rt*10^8);
// The answers vary due to round off error


//Given data

G=30;       // Gain
nsp=5;
R=0.8;       // 
f1=16*10^9;
fe=9*10^9;
//Pi1=-60;
c=3*10^8;    // Velocity of light
h=6.63*10^-34    // Planck constant
lambda=1530*10^-9;  // Wavelegth
Pi1=-27;              // Input power
Pi2=-60;
f0=16*10^9;

//(b) The variance of the signal–ASE beat noise current for Pin=-60dBm
Po2=G+Pi2;
Po=10^(Po2/10);
Po=Po*10^-3;
G=10^(G/10);
f=c/lambda;
r=nsp*h*f*(G-1);
B=8*10^9;
//B=min(f/2,fe);
r0=4*R^2*Po*r*B;
//r0=r0*10^12;

//(b) The variance of the ASE–ASE beat noise current

r1=R^2*r^2*((2*f0)-fe)*fe;

//r1=r1*10^11;
// (c) The total variance.

rt=r0+r1;

// Displaying results in the command window            
printf("\n \n (b) The variance of the signal–ASE beat noise current for Pin=-60dBm");

printf("\n The variance of the signal–ASE beat noise current = %0.2f x 10^-11 A^2",r0*10^11);
printf("\n The variance of the ASE–ASE beat noise current = %0.2f x 10^-11 A^2",r1*10^11);

printf("\n The total variance = %0.2f x 10^-11 A^2 ",rt*10^11);
