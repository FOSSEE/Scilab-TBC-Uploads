//Chapter-10,Example10_31,pg10_71
f=50
P=8
R2=0.01
X2=0.1
sfl=0.04
//for Tmax
sm=R2/X2
//for Tfl
s=sfl
T=sm*R2*((R2^2)+((sfl*X2)^2))/((sfl*R2)*((R2^2)+((sm*X2)^2)))//Tmax/Tfl
Ns=120*f/P
sm=0.1
N=Ns*(1-sm)
printf("ratio of max to full load torque\n")
printf("T=%.2f\n",T)
printf("speed at max torque\n")
printf("N=%.f r.p.m",N)
