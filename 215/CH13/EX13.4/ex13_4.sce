clc
//Example 13.4
disp('Given')
disp('L1=0.4H L2=2.5H k=0.6 i1=4i2=20*cos(500t-20)mA')
L1=0.4;L2=2.5;k=0.6;
disp('a)')
t=0;
i2=5*cos(500*t-(20*%pi)/180)
printf("i2(0)=%3.2f mA \n",i2)
disp('b)')
M=k*sqrt(L1*L2)
//v1(t)=L1*d/dt(i1)+M*d/dt(i2)
v1=-L1*20*500*10^-3*sin(500*t-(20*%pi)/180)-M*5*500*10^-3*sin(500*t-(20*%pi)/180)
printf("v1(0)=%3.2f V \n",v1)
disp('c')
//The total energy can be found as
w=(L1*(4*i2)^2)/2+ (L2*(i2)^2)/2+M*(4*i2)*(i2)
printf("w=%3.2f uJ \n",w)

