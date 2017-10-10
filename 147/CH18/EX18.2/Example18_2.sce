//Dimension of coil lxb
l = 15*10^(-3);//m
b = 12*10^(-3);//m
Ba = 1.8*10^(-3);//Wb/m^2
k = 0.14*10^(-6);;//Nm/rad
theta = %pi/2;
I = 5*10^(-3);
N = k*theta/(Ba*l*b*I);
mprintf('Number of turns required N = %0.0f',N);