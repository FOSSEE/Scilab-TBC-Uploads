// Initiliztion of variables
v_B=12 // cm/s // velocity of block B
u=0
s=24 // cm // distance travelled by bock B
t=5 // seconds
// Calculations
a_B=v_B^2/(2*s) // cm/s^2 // using eq'n v^2-u^2=28*a*s for block B. Here u=0
a_A=(3/2)*a_B // cm/s^2 // from eq'n 4 // Here a_A is negative which means acceleration is in opposite direction. However we consider +ve values for further calculations
v_A=u+(a_A*t) // m/s // using eq'n v=u+(a*t)
S_A=(u*t)+((1/2)*a_A*t^2) // m // using eq'n S=(u*t)+((1/2)*a*t^2)
// Results
clc
printf('The acceleration of block A (a_A) is %f cm/s^2 \n',a_A)
printf('The acceleration of block B (a_B) is %f cm/s^2 \n',a_B)
printf('The velocity of block A (v_A) after 5 seconds is %f m/s \n',v_A)
printf('The position of block A (S_A) after 5 seconds is %f m \n',S_A)
