clear
clc
//Example 6.2 CONCRETE FLOWING INTO CART
A=1; //[ft^2]
rho=150; //density[lbm/ft^3]
v=10; //speed[ft/s]
theta=60; //degrees
//Momentum accumulation=0, outflow=0
//Momentum inflow
mi_x=rho*A*v^2*cosd(theta) //x-direction
mi_z=rho*A*v^2*sind(theta) //z-direction
//1slug=32.2 lbm
//Tension in cable
T=mi_x/32.2 //[lbf]
printf("\n The tension in the cable = %.f lbf.\n\n",T)
W=800; //weight[lbf]
N=W+(mi_z/32.2) //[lbf]
printf("\n The weight recorded by the scale = %.f lbf.\n",N)