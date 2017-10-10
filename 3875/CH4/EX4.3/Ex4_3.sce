clc;
clear;
D=0.82 //distance between the source and the screen in m
B=0.02 //distance between the source and the biprism in m
lambda=6900*10^-10 //wavelength in m
myu=1.5 //refractive index
alpha=%pi/180 //refracting angle in radian

//calculation
d=2*(myu-1)*alpha*B //distance between sources in m
Beta=(lambda*D)/d

mprintf("The fringe width is = %1.3e m",Beta)
