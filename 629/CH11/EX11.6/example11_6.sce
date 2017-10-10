clear
clc
//Example 11.6 LIFT ON A ROTATING SPHERE
rho=1.2; //density[Kg/m^3]
d=0.03; //diameter [m]
r=d/2; //radius [m]
A=%pi*d^2/4 //area[m^2]
Vo=10; //velocity [m/s]
w=100*2*%pi //angular speed [rad/s]
p=w*r/Vo //rotational parameter
//From fig.11.17
CL=0.26; //lift coefficient
CD=0.64; //drag coefficient
//Lift force
FL=(rho*Vo^2*CL*A)/2 //[N]
printf("\nThe lift force on the ball = %.3f N and the direction of lift is downward.\n",FL)
//Drag force
FD=(rho*Vo^2*CD*A)/2 //[N]
printf("\nThe drag force on the ball = %.4f N.\n",FD)