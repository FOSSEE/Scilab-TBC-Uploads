//Example number 9.6, Page number 205

clc;clear;
close;

//Variable declaration
T1=293;     //temperature(K)
T2=305;     //temperature(K)
e=1.6*10**-19;     //charge(c)
sigma1=2;    
sigma2=4.5; 
KB=1.38*10**-23;   //boltzmann constant
//Calculation
x=((1/T1)-(1/T2));
y=log(sigma2/sigma1);
z=3*log(T2/T1)/2;
Eg=2*KB*(y+z)/(e*x);    //energy band gap(eV)
//Result
printf("energy band gap is %.2f eV",Eg)
//answer in the book is wrong
