// Initilization of variables
M=750 // kg // mass of hammer
m=200 // kg // mass of the pile
h=1.2 // m // height of fall of the hammer
delta=0.1 // m // distance upto which the pile is driven into the ground
g=9.81 // m/s^2 // acc due to gravity
// Caculations
// The resistance to penetration to the pile is given by eq'n,
R=(((M+m)*g)+((M^2*g*h)/((M+m)*delta)))*(10^-3) // kN 
// Results
clc
printf('The resistance to penetration to the pile is %f kN \n',R)
