clc;

printf("Example 2.5\n");
//From equation 2.68:
// 0.5*((u2)^2-(u1)^2)=g*(z1-z2)+((P1-P2)/rho)
//Suffix 1 to denote conditions in the pipe and suffix 2 to denote conditions in the jet
//Symbols have their usual meaning
u1=0;
z1=0;
z2=0;
P1=250*10^3;
P2=0;
rho=1000;//Density of water
printf("\n Suffix 1 to denote conditions in the pipe and suffix 2 to denote conditions in the jet")
printf("\n Given:\n u1=%d m/s\n z1= %d m\n z2= %d m\n P1= %.3f kN/m^2\n P2= %d kN/m^2\n Density of water= %d kg/m^3",u1,z1,z2,P1,P2,rho);
g=9.81;
x=poly([0],'x');
u2=roots((0.5*(x)^2)-((P1-P2)/rho));
printf("\n\n Ans:\n Velocity of the jet, u2 = %.1f m/s",u2(1,1));