clc
//to calculate fringe width 
mu=1.5 //refractive index (unitless)
alpha=%pi/180 //refracting angle in radian
Y1=20*10^-2 //distance between the source and the biprism in m
Y2=80*10^-2 //distance in m
D=Y1+Y2 // distance in m
lambda=6900*10^-10 //wavelength in m
twod=2*(mu-1)*alpha*Y1 
omega=D*lambda/twod
disp("the fringe width is omega="+string(omega)+"m")
