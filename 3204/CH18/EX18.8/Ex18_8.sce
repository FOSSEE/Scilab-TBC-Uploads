// Initilization of variables
m_a=0.01 // kg // mass of bullet A
v_a=100 // m/s // velocity of bullet A
m_b=1 // kg // mass of the bob
v_b=0 // m/s // velocity of the bob
l=1 // m // length of the pendulum
v_r=-20 // m/s // velocity at which the bullet rebounds the surface of the bob // here the notation for v'_a is shown by v_r
v_e=20 // m/s // velocity at which the bullet escapes through the surface of the bob // here the notation for v_a is shown by v_e
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Momentum of the bullet & the bob before impact is,
M=(m_a*v_a)+(m_b*v_b) // kg.m/s......(eq'n 1)
// The common velocity v_c ( we use v_c insted of v' for notation of common velocity) is given by equating eq'n 1 & eq'n 2 as,
// (a) When the bullet gets embedded into the bob
v_c=M/(m_a+m_b) // m/s
// The height h to which the bob rises is given by eq'n 3 as,
h_1=(1/2)*(v_c^2/g) // m
// The angle (theta_1) by which the bob swings corresponding to the value of height h_1 is,
theta_1=acosd((l-h_1)/l) // degree
// (b) When the bullet rebounds from the surface of the bob
// The velocity of the bob after the rebound of the bullet from its surface is given by equating eq'n 1 & eq'n 4 as,
v_bob_rebound=M-(m_a*v_r) // m/s // here v_bob_rebound=v'_b
// The equation for the height which the bob attains after impact is,
h_2=(v_bob_rebound^2)/(2*g) // m
// The corresponding angle of swing 
theta_2=acosd((l-h_2)/l) // degree
// (c) When the bullet pierces and escapes through the bob
// From eq'n 1 & 5 the velocity attained by the bob after impact is given as,
v_b_escape=M-(m_a*v_e) // m/s // here we use, v_b_escape insted of v'_b
// The equation for the height which the bob attains after impact is,
h_3=(v_b_escape^2)/(2*g) // m
// The corresponding angle of swing 
theta_3=acosd((l-h_3)/(l)) // degree
// Results
clc
printf('(a) The maximum angle through which the pendulum swings when the bullet gets embeded into the bob is %f degree \n',theta_1)
printf('(b) The maximum angle through which the pendulum swings when the bullet rebounds from the surface of the bob is %f degree \n',theta_2)
printf('(c) The maximum angle through which the pendulum swings when the bullet escapes from other end of the bob the bob is %f degree \n',theta_3)
// IN THIS SUM WE HAVE USED DIFFERENT NOTATIONS CONSIDERING DIFFERENT CASES BECAUSE IN THE TEXT BOOK WE HAD 3 VARIABLES WITH SAME NOTATION BUT WITH A DIFFERENT VALUE WHICH COULD NOT BE EXECUTED INTO SCILAB.
