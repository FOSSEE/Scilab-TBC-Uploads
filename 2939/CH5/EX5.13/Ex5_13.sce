
// Ex5_13
clc;

// Given:
w=8.52*10^-4;
flux=10^18;
// Solution:

A=w/(flux*24*3600);// in m^2
A1=A*10000/(10^-24);// in Barns
printf("The cros section area is = %f b", A1)
k=flux*A*6.022*10^23/197;
printf("\n \n The saturation activity possible is = %f dis s^-1 g^-1", k)
y=(0.5)^(0.3704);
activity=k*(1-y);
printf("\n \n The activity is = %f dis s^-1 g^-1 ",activity)
