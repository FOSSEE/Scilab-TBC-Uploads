
clear
 clc
//to find initial speed of bullet
//to find lost in kinetic energy

// GIVEN:
//refer to figure 11-23 from page no. 246
//mass of block
M = 5.4//in Kg
//mass of bullet
m = 9.5e-3//in Kg
//height to which block rises
h = 6.3e-2//in meters
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//applying work-energy principle
//initial speed of bullet
vi = ((M+m)/m)*(sqrt(2*g*h))//in m/s
//ratio of final to initial kinetic enerdy
Kf_by_Ki = (m/(M+m))
//initialkinetic energy remains after collision
Kr = (Kf_by_Ki)*100//in percentage
//kinetic energy stored inside pendullum
Ks = 100-Kr//in percentage
//answer of vi is slightly different than textbook. but answer by calculator is same as that of scilab
printf ("\n\n Initial speed of bullet vi = \n\n %3i m/s",vi);
printf ("\n\n Ratio of final to initial kinetic enerdy Kf/Ki = \n\n %.4f ",Kf_by_Ki);
printf ("\n\n Initial kinetic energy remains after collision Kr = \n\n %.2f percent",Kr);
printf ("\n\n Kinetic energy stored inside pendullum Ks = \n\n %.2f percent",Ks);
