clear;
//clc();

// Example 7.1
// Page: 134
printf("Example-7.1  Page no.-134\n\n");

//***Data***//
T = 220+459.67;//[R] Temperature in Rankine
P = 500;//[psia] Pressure
R = 10.73;//[(psi*ft^(3)/(lbmol*R))] Gas constant

// We will follow the method 'a' as the book has given the multiple methods to solve this problem
// From  the equation 7.10 given in the book(page 132), we have 
// (f/P) = exp((-1/(R*T))*intgrate(a*dp)) , with intgration limits from zero to 'P'
// Where 'a' is known as volume residual
// Let us say , I = intgrate(a*dp)

// From the table 7.A(page 134) given in the book, the average value of alpha(a) is 
a = 4.256;//[ft^(3)/lbmol]
// so 
I = integrate('a*p^(0)','p',0,P);

// Now 
f = P*exp((-1/(R*T))*I);//[psia]
printf("Fugacity of propane gas at the given condition is %f psia",f);