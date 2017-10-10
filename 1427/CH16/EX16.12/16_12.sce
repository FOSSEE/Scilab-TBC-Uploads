//ques-16.12
//Calculating order with respect to A and B and rate constant
clc
//A,B in mol/L
A1=2.5*10^-4; B1=3*10^-5; k1=5*10^-4;
A2=5*10^-4; B2=6*10^-5; k2=4*10^-3;
A3=10^-3; B3=6*10^-5; k3=1.6*10^-2;
//r=k*[A]^x*[B]^y
x=log10(1/4)/log10(0.5);
y=log10(1/2)/log10(1/2);
k=k1/(A1^x*B1^y);
printf("Order with respect to A is %d, B is %d and rate constant is %d L^2/mol^2/s.",x,y,k);
