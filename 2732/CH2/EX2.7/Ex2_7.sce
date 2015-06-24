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

// stress invariants :old 
I1=tau(1,1)+tau(2,2)+tau(3,3)
I2=tau(1,1)*tau(2,2)+tau(2,2)*tau(3,3)+tau(3,3)*tau(1,1)-(tau(1,2)^2+tau(2,3)^2+tau(3,1)^2)
I3=tau(1,1)*tau(2,2)*tau(3,3)+2*tau(1,2)*tau(2,3)*tau(3,1)-(tau(1,1)*tau(2,3)^2+tau(2,2)*tau(3,1)^2+tau(3,3)*tau(1,2)^2)

// stress invariants :new
I11=tau_new(1,1)+tau_new(2,2)+tau_new(3,3)
I22=tau_new(1,1)*tau_new(2,2)+tau_new(2,2)*tau_new(3,3)+tau_new(3,3)*tau_new(1,1)-(tau_new(1,2)^2+tau_new(2,3)^2+tau_new(3,1)^2)
I33=tau_new(1,1)*tau_new(2,2)*tau_new(3,3)+2*tau_new(1,2)*tau_new(2,3)*tau_new(3,1)-(tau_new(1,1)*tau_new(2,3)^2+tau_new(2,2)*tau_new(3,1)^2+tau_new(3,3)*tau_new(1,2)^2)

// Results
printf('The invariants of old stress tensor are I1=%0.2f I2=%.e I3=%.e \n and that of the new stress tensor are I1=%0.2f I2=%.e I3=%.e',I1,I2,I3,I11,I22,I33)
printf('\n Hence the same stress tensor invariants')



