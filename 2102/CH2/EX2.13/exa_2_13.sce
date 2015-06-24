// Exa 2.13
clc;
clear;
close;
// Given data
q=1.6*10^-19;// in C
rho=75;//in Ωcm
N_D= 10^13;// in /cm^3
N_A= 5*10^12;//in /cm^3
E=3;// in V/cm
ni= 2.7*10^12;// in /cm^3
sigma= 1/rho;// in (Ωcm)^-1
// miu_p/miu_n= 1/3 or miu_n=3*miu_p
// sigma= q*ni*(miu_n+miu_p) = q*ni*(3*miu_p+miu_p) = q*ni*(4*miu_p)
miu_p= sigma/(q*ni*4);
miu_n= 3*miu_p;
// n+N_A= p+N_D  or  n= p+N_D-N_A
// n*p= ni^2  or  (p+N_D-N_A)*p= ni^2
// p^2 + (N_D-N_A)*p-ni^2 =0
// values= [1 (N_D-N_A) -ni^2];
p = roots([1 5*10^12 -7.29*10^24])
p=p(2);//discarding -ve value
n=p+N_D-N_A;
I= q*(n*miu_n+p*miu_p)*E// in A/m^2
disp(I,"The total conduction current in A/m^2 is : ") 

// Note: There is some difference between book answer and coding. The reson behind this is that
//          The value of P is evaluated 1.8*10^12 while accurate value is 1.179674*10^12
