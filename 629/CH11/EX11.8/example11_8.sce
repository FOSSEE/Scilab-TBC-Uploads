clear
clc
//Example 11.8 TAKEOFF CHARACTERISTICS OF AN AIRPLANE
Vo=140000/3600; //velocity [m/s]
rho=1.2; //density [Kg/m^3]
b=10; //wing span[m]
c=1.5; //chord length[m]
S=b*c //area [m^2]
FL=11600; //lift force[N]
CL=FL/(S*rho*Vo^2/2) //lift coefficient
A=b/c //aspect ratio
//Interpolating for A from fig.11.23,
alpha=7; //angle of attack in degrees
printf("\nThe angle of attack for a take the given take off speed = %.f degrees.\n",alpha)
//stall occurs at CL=1.18, from fig.11.23
Cl=1.18;
Vstall=sqrt(2*FL/(Cl*S*rho))*(3600/1000) //stall speed [Km/hr]
printf("\nThe stall speed is %.f km/h.\n",Vstall)