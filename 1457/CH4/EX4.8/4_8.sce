clc
//Initialization of variables
z1=2
z2=0.8
//calculations
disp("From equation of continuity, z1*v1=z2*v2")
V1= sqrt((z2-z1)*2*9.81/(1-z1^2 /z2^2))
V2=z1*V1/z2
Q=z1*1*V1
//results
printf("Flow rate = %.2f m^3/s",Q)
