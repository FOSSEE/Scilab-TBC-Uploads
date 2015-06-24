// Initilization of variables
v_t=10 // m/s // velocity of the train
v_s=5 // m/s // velocity of the stone
// Calculations
// Let v_r be the relative velocity, which is given as, (from triangle law)
v_r=sqrt(v_t^2+v_s^2) // m/s
// The direction ofthe stone is,
theta=atand(v_s/v_t) // degree
// Results
clc
printf('The velocity at which the stone appears to hit the person travelling in the train is %f m/s \n',v_r)
printf('The direction of the stone is %f degree \n',theta)
