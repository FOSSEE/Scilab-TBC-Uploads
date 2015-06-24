//To find speed lost
clc
//Given:
d1=1, d2=2.25 //m
N1=200 //rpm
sigma1=1.4*10^6, sigma2=0.5*10^6, E=100*10^6 //N/m^2
//Solution:
//Calculating the speed of the driven pulley
N21=N1*(d1/d2) //rpm
//Calculating the speed of the shaft considering creep
N22=N1*(d1/d2)*(E+sqrt(sigma2))/(E+sqrt(sigma1)) //rpm
//Calculating the speed lost by the driven pulley due to creep
Nl=N21-N22 //Speed lost by the driven pulley due to creep, rpm
//Results:
printf("\n\n Speed lost by the driven pulley due to creep = %.4f rpm.\n\n",Nl)