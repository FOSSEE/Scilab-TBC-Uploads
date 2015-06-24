clear
clc
Fg=10^5;
P=10^5;
PA1=20;PA2=100;
HA=12.5;
kaga=0.32;kla=0.1;
//CB=(420-PA3)/12.5;
//rA=((HA*CB)+pA)/((1/kaga)+(HA/kla))
rA=420/((1/kaga)+(HA/kla));
h=(Fg/P)*integrate('1/rA','PA',PA1,PA2);
printf("The height of the tower is %f",h)
printf("m")