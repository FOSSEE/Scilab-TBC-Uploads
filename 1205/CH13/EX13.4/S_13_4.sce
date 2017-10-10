clc;
//Force exerted by track at point 2
//kinetic energy
T1=0;//J
//T2=1/2*m*v2^2 m/s

//Work
//U12=W*12m;//J
m=1000;//kg mass of car
//principle of work and energy we get v2^2=24*g
g=9.81;//m/s^2
W=m*g;//N, weight of car
v2=sqrt(24*g);// m/s

//Newtons second law at point 2
p=6;//m radius of curvature at 2
//sum(Fn)=m*an gives N=W*5
N=W+m*v2^2/p;//N Force exerted by track on car
N=N/1000;//kN conversion to kN
printf("Force exerted by track on car where radius of curvature is 6 m N= %.2f kN \n",N);

//Minimum value of rho at point 3

//Work and energy principle gives
v3=sqrt(2*g*(12-4.5));//m/s

//Newtons second law at point 3
//sum(Fn)=m*an
p=v3^2/g;//m
printf("Minimum safe value radius of curvature at point 3 is %.1f m\n",p);
