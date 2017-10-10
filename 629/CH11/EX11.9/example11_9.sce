clear
clc
//Example 11.9 NEGATIVE LIFT ON A RACE CAR
l=1.5; //[m]
c=0.25; //[m]
A=l/c //aspect ratio
//Interpolating for A, from fig 11.23
CL=0.93; //lift coefficient
CD=0.07; //drag coefficient
S=l*c //area [m^2]
Vo=75; //velocity [m/s]
rho=1.17; //[Kg/m^3]
//Lift force
FL=CL*S*rho*Vo^2/2 //[N]
printf("\nThe downward thrust from the vane = %.f N.\n",FL)
//Drag force
FD=CD*S*rho*Vo^2/2
printf("\nThe drag from the vane = %.1f N.\n",FD)