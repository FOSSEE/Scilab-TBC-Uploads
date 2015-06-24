clc;
clear;
printf("\n Example 8.1\n");

dia_cy=110e-3; //Cylinder diameter
printf("\n Given\n Cylinder diameter = %d mm",dia_cy*1e3)
str=230e-3; //stroke
printf("\n Stroke length = %d mm",str*1e3);
l_su=6; //Suction line length
printf("\n Suction line length = %d m",l_su);
d_su=50e-3; //Suction line diameter
printf("\n Suction line diameter = %d mm",d_su*1e3);
lvl_wtr=3; //level of the water in the suction tank
printf("\n level of the water in the suction tank = %d m",lvl_wtr);
atm_P=10.36;
printf("\n Atmospheric pressure is equivalent to = %.2f m of water",atm_P);
//If the maximum permissible speed of the pump is N Hz:
//Angular velocity of the driving mechanism = 2*pi*N radians/s
//Acceleration of piston = 0.5x0.230(2*pi*N)^2*cos(2*pi*N*t) m/s^2
//Maximum acceleration(when t=0) = 4.54*N^2 m/s^2
//Maximum acceleration of the liquid in the suction pipe
//                            =(.110/.05)^2 x 4.54*N^2 = 21.91*N^2 m/s^2
//Accelerating force acting on the liquid
//                            = 21.97*N^2*pi/4*(0.050)^2*(6*1000) N
//Pressure drop in suction line due to acceleration
//                            = 21.97*N^2 *6*1000 N/m^2
//                            = 1.32x 10^5*N^2 N/m^2
//                            = 13.44*N^2  m water
//Pressure head at cylinder when separation is about to occur,
x=poly([0],'x');
N=roots(1.20-(10.36-3.0-13.44*x^2));
printf("\n\n Calculations:\n Maximum speed at which the pump can run = %.3f Hz",N(1));