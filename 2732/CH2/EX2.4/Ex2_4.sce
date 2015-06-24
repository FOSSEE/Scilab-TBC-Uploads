clc
// initialization of variables
clear
tau=[200 100 0
     100 0 0
     0 0 500] // some units
theta=60 // degrees
//calculations
theta=theta*%pi/180
a=[cos(theta) sin(theta) 0
  -sin(theta) cos(theta) 0
   0 0 1]
b=a.'
tau_new=a*tau*b
// Results
printf('The new stress tensor is')
disp(tau_new)

   

