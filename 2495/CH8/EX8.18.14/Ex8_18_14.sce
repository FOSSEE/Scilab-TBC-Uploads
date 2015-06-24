clear
clc
m=[0.01,0.02,0.05,0.10,0.20];//
n=0.01;//
mu=m+n;//
E=[1.0495,1.0315,1.0073,0.9885,0.9694]
E2=0.2225;//in V
R=0.05913;//in V
O=log10(m/n);//
K=(E-E2)/R +O;//
plot(mu,K,'mo-');//
[m,c]=reglin(mu,K)
Ksp=10^-c;//
printf('Ksp=%.2f*10^-14',Ksp/10^-14)

//There are some errors in the solution given in textbook
//page 491

