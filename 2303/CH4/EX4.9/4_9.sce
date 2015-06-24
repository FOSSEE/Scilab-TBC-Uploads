//Example 4.9
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;

syms a n Z;
x1=a^n;    //for all n>=0
X1=Z/(Z-a);   //ROC is mod(Z)>a
x2=x1(n-2);

//Time shifting property
X2=[Z^(-2)]*X1;             

//Display the result in command window
disp (X2,"Z-transform of x(n-2) is:");
