//find the maximum instan stress and elongation
clc
//solution
//given
d=50//mm//diameter of rod
l=2500//mm//length of bar
u=100*10^3//N-mm//shock energy
E=200*10^3//N/mm^2
//let f be stress
pi=3.14
V=(pi/4)*d^2*l//mm^3
//u=(f^2*V)/(2*E)
f=sqrt(u*2*E/V)//N/mm^2
//let dl be elongation produced
dl=f*l/E//mm
printf("the stress produced is,%f N/mm^2\n",f)
printf("elongation priduces is, %f mm",dl)