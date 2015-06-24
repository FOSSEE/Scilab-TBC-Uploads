clc();
clear;
// To calculate the ratio between conductivity
Eg=1.2;   //energy in eV
Eg=Eg*1.6*10^-19;    //in J
KB=1.38*10^-23;
T1=600;   //temp in K
T2=300;   //temp in K
//sigma is proportional to exp(-Eg/(2*KB*T))
//let sigma1/sigma2 be R
R=exp((Eg/(2*KB))*((1/T2)-(1/T1)));
disp(R);

//answer given in the book is wrong
