
clc;
clear;
//Example 2.47   
//Given
k=200    //W/(m.K)
h=15    //W/(sq m.K)
T0=523    //[K]
T_inf=288    //[K]
theta_0=T0-T_inf    
dia=25    //diameter[mm]
dia=dia/1000    //diameter[m]
r=dia/2    //radius in [m]
P=%pi*dia    //[m]
A=%pi*r^2    //[sq m]
//For insulated fin:
m=sqrt(h*P/(k*A))
L=100    //length of rod in [mm]
L=L/1000    //length of rod in [m]
Q=theta_0*tanh(m*L)*sqrt(h*P*k*A)    //Heat loss 
//ANSWER-1
printf("Heat loss by the insulated rod is %f W \n",Q)
nf=tanh(m*L)/(m*L)    //Fin efficiency for  insulated fin
//ANSWER-2
printf("Fin efficiency is %f percent \n",nf*100)
//At the end of the fin: theta/theta_0=(cosh[m(L-x)]/cosh(mL))
//at x=L, theta/theta_0=1/(cosh(mL)
T=T_inf+(T0-T_inf)*(1/cosh(m*L))    //[K]
//ANSWER-3
printf("Temperature at the end of the fin is %f K \n",T)
