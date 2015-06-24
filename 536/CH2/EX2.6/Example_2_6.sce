clc;

printf("Example 2.6\n");
id=0.5; //internal diameter of pipe
rs=50; //revolution speed
ir=0.15; //internal radius of water
rho=1000; //density of water
printf("\n Given:\n Internal diameter = %.1f m\n Rotating speed = %d rev/s\n Inner radius of liquid = %.2f m\n Density of water= %d kg/m^3",id,rs,ir,rho);
omega=2*%pi*rs;
printf("\n\n Angular speed of rotation = %d rad/s",omega);
//The wall pressure is given by equation 2.82 as:
wall_pressure=rho*(omega)^2/2*((id/2)^2-ir^2);
printf("\n The wall pressure is = %f N/m^2 \n\t\t\t=%.2f x 10^6 N/m^2",wall_pressure,wall_pressure/10^6);