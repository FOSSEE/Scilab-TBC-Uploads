//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 10.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
Alpha=5e-7;//Coefficient of expansion of pure silica in K^(-1)
Beta=6.8e-6;//Value for pure silica in K^(-1)
LambdaB=1.55e-6;//Wavelength in m
n1=1.46;//Dimensionless Refractive index of Silica
P11=0.126;//Value of 1st Pockels coefficient
P12=0.274;//Value of 2nd Pockels coefficient
Mu=0.17;//Poisson's ratio

DeltaLambdaB=LambdaB*(Alpha+Beta);//Wavelength sensitivity to temperature changes of the fiber in  m K^(-1)
mprintf("\n DeltaLambdaB = %.4f  nm K^-1",DeltaLambdaB/1e-9);//Dividing by 10^(-9) to convert to nm K^(-1)

Pe=(n1^2)/2*((1-Mu)*P12-Mu*P11);//Corresponding effective photoelastic coefficient
mprintf("\n Pe = %.3f",Pe);//The answers vary due to round off error

DeltaLambdaB=LambdaB*(1-Pe);//Wavelength sensitivity as far as sensitivity is concerned in  m Epsilon^(-1)
mprintf("\n DeltaLambdaB = %.1e  m Epsilon^-1",DeltaLambdaB);
