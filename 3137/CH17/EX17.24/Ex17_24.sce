//Initilization of variables
Wa=161 //lb
Wb=193.2 //lb
Wc=322 //lb
v1=5 //ft/s
lc=6 //in
k=6 //lb/ft
l=4 //ft
u=0.2 //coefficient of friction
g=32.2 //ft/s^2
//Calculations
Ib=(1/2)*(Wb/g)*(1/2)^2 //Moment of inertia
w1=v1/0.5 //rad/s
T1=(0.5*(Wc/g)*v1^2)+(0.5*Ib*w1^2)+(0.5*(Wa/g)*v1^2) //ft-lb
//Work Done on the system
//The textbook is ambigious on the calculations hence the result is dispalyed directly
U=26.4 //ft-lb
//Velocity Calculations
v=sqrt((T1+U)/9) //ft/s
//Result
printf('The velocity of the block is %f',v)
