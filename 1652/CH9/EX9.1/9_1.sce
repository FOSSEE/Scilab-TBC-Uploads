clc
//Initialization of variables
r=2.1*10^-6 //cm
n=889
x=0.1 //cm
T=298.2 //K
//calculations
V=4/3 *%pi *r^3
rho=19.3-1
ffd=rho*V*980.7
eps=ffd*x
logN=-6.96*10^-14 /(2.303*1.38*10^-16 *T)
N=10^logN *n
//results
printf("No. of particles = %d ",N+1)
