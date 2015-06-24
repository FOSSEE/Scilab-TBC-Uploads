clc;
//Example 21.10
//page no 286
printf("Example 21.10 page no 286\n\n");
//a centrifugal pump is needed to transport water from sea level to 10000 feet above sea level
//using bernoulli equation
//neglectiing kinetic energy effects and frictional losses
P1=14.7//atmospheric pressure at sea level,psi
P2=10.2//atmospheric pressure at 10000 feet,psi
z1=0//at sea level,ft
z2=10000//height above sea level,ft
rho=62.4//density of water
g=32.2//gravitational acc.
g_c=32.2//gravitational constant
h_s=((P2-P1)*144/(rho)  + (z2-z1)*(g/g_c))//work deliverd by the pump to the water,in ft.lbf/lb
h_s=9990//ft.lbf/lb
h_sf=h_s*50//in ft.lbf
printf("\n work h_sf=%f ft.lbf/s",h_sf);
//actual pump work is calculated by dividing the above terms by the frictional afficiency
neta=0.65//frictional efficiency
W_p=round((h_sf/550)/neta)//actual work
printf("\n actual work W_p=%f hp",W_p);
