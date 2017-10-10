
clc
//solution
//given
dc=0.050//m
dse=0.075//m
dsi=0.050//m
dp=0.018//m
t=50//degree celcius
Es=210*10^9//N/m^2
Ec=105*10^9//N/m^2
as=11.5*10^-6//per degree celcius
ac=17*10^-6//per degree celcius
//refer fig 4.18
pi=3.14
Ac=(pi/4)*dc^2//m^2
As=(pi/4)*(dse^2-dsi^2)//m^2
Ap=(pi/4)*(dp)^2
//let l be the length of rods
//dlc=l*ac*t=850*10^-6*l
//dls=l*as*t=575*10^-6*l
//x=dlc-dls=275*10^-6*l
//x1=(P*l)/(Ac*Ec)=(P*l)/(206.22*10^6)//m
//x2=(P*l)/(As*Es)=(P*l)/(515.55*10^6)//m
//therefore X=x1+x2=(6.79*10^-9*P*l)
//x=X
P=(275*10^-6)/(6.79*10^-9)//N
fc=P/Ac//N/m^2
fs=P/As//N/m^2
tp=P/(2*Ap)//N/m^2
printf("the stress in coper bar is, %f N/m^2\n",fc)
printf("the stress in steel bar is, %f N/m^2\n",fs)
printf("the stress is pin is,%f N.m^2",tp)