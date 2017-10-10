clear
clc
//Example 2.2 CALCULATING VISCOSITY OF LIQUID AS A FUNCTION OF TEMPERATURE
T1=20+273; //[K]
T2=40+273; //[K]
mu1=10^-3; //[N.s/m^2]
mu2=6.53*10^-4; //[N.s/m^2]

//ln(mu)=ln(C)+b/T
A=[1 1/T1;1 1/T2]
B=[log(mu1);log(mu2)]
//Az=B, z=[log(C);b]
z=inv(A)*B
C=exp(z(1))
b=z(2) //[K]

//At T=30°C,
T=30+273; //[K]
//Viscosity
mu=C*exp(b/T)*10^4 //in 10^-4 N.s/m^2
printf("\n The viscosity of water at 30°C = %.2f*10^(-4) N.s/m^2. \n",mu)
