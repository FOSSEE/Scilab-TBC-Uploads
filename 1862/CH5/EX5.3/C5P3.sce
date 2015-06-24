
clear
 clc
//to analyse the motion if (1)cord is horizontal and (2)the cord is making an angle of 15 degree with the  horizontal

// GIVEN::
//refer to figure 5-7(a) on page no. 92
//mass of sled
m = 7.5//in kg
//force by which sled is pulled
P = 21.0//in N
//angle made by sled with horizontal
theta = 15//in degrees
//acceleration due to gravity
g = 9.81//in m/s^2

// SOLUTION:

//when cord is horizontal

//considering free body diagram 5-7b from page no.92.
//euating forces in x direction
//applying newton's secong law of motion
//horizontal acceleration
ax = P/m//in m/s^2
////equating forces in y direction
//applying newton's secong law of motion
//force exerted bu surface
N = round(m*g)//in N

//when cord is  making an angle of 15 degree with the horizontal

//considering free body diagram 5-7c from page no.93.
//euating forces in x direction and applying newton's secong law of motion
//acceleration
a_x = P*cosd(theta)/m//in m/s^2
////euating forces in y direction
//applying newton's secong law of motion
//normal force exerted bu surface
N_2 = ceil((m*g)-(P*sind(theta)))//in N
N = round(N)
N_2 = ceil(N_2)

printf ("\n\n Normal force exerted bu surface when cord is horizontal N1 = \n\n %2i N",N);
printf ("\n\n Acceleration in x direction when cord is horizontal ax1 = \n\n %.2f m/s^2",ax);
printf ("\n\n Normal force exerted bu surface when cord is making an angle of 15 degree with the  horizontal N2 = \n\n %2i N",N_2);
printf ("\n\n Acceleration in x direction when cord is making an angle of 15 degree with the  horizontal ax2 = \n\n %.2f m/s^2",a_x);
