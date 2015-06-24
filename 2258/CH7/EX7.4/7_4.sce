clc();
clear;
// To calculate the conductivity
sigma1=2;    //conductivity in ohm-1 m-1
EgeV=0.72;    //band gap in eV
Eg=EgeV*1.6*10^-19;    //in J
KB=1.38*10^-23;    //boltzmann constant
T1=20;    //temp in C
T1=T1+273;   //temp in K
T2=40;    //temp in C
T2=T2+273;   //temp in K
//sigma2/sigma1 = exp((-Eg/(2*KB))*((1/T2)-(1/T1)))
//by taking log on both sides we get 2.303*log10(sigma2/sigma1) = (Eg/(2*KB))*((1/T1)-(1/T2))
//let (Eg/(2*KB))*((1/T1)-(1/T2)) be X
X=(Eg/(2*KB))*((1/T1)-(1/T2));
//let log10(sigma2/sigma1) be Y
Y=X/2.303;
//log10(sigma2/sigma1) = log10(sigma2)-log10(sigma1)
//let log10(sigma2) be A
A=Y+log10(sigma1);
sigma2=10^A;
printf("the conductivity is %f ohm-1 m-1",sigma2);
