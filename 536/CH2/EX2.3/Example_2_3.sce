clc;

printf("Example 2.3\n");
//Mass rate of discharge of water, G = rho*u*A
rho=1000; //Density of Water
d=25*10^-3; //Diameter of nozzle
u=25; //Velocity of water at nozzle
printf("\n Given:\n Density of water = %d kg/m^3\n Nozzle diameter = %.3f m \n Velocity = %d m/s",rho,d,u);
G=rho*u*%pi/4*d^2;
printf("\n\n Mass rate of discharge of water, G = %.2f kg/s",G);
//Momentum of fluid per second = Gu
F=G*25;
printf("\n Momentum of fluid per second = %.0f N",F);
printf("\n Reaction force = Rate of change of momentum = %.0f N",F);