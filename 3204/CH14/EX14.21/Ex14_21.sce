// Initilization of variables
S=5 // m // distance between block A&B
mu_A=0.2 // coefficient of friction between the block A and the inclined plane
mu_B=0.1 // coefficient of friction between the block B and the inclined plane
theta=20 // degree // inclination of the pane
g=9.81 // m/s^2 // acc due to gravity
// Calculatio//
// EQUATION OF MOTION OF BLOCK A:
// Let a_A & a_B be the acceleration of block A & B.
a_A=(g*sind(theta))-(mu_A*g*cosd(theta)) // m/s^2 // from eq'n 1 & eq'n 2
// EQUATION OF MOTION OF BLOCK B:
a_B=g*((sind(theta))-(mu_B*cosd(theta))) // m/s^2 // from eq'n 3 & Rb
// Now the eq'n for time of collision of the blocks is given as,
t=sqrt((S*2)/(a_B-a_A)) // seconds 
S_A=(1/2)*a_A*t^2 // m // distance travelled by block A
S_B=(1/2)*a_B*t^2 // m // distance travelled by block B
// Results
clc
printf('The time before collision is %f seconds \n',t)
printf('The distance travelled by block A before collision is %f m \n',S_A)
printf('The distance travelled by block B before collision is %f m \n',S_B)
