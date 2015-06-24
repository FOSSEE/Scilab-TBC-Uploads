clear all;
clc;
funcprot(0);

//given data
phi = 0.4;
epsilon = 28.6;//in deg

//calculations
alpha2 = (180/%pi)*atan(1/phi);//in deg
zeta = 0.04*(1+ 1.5*(alpha2/100)^2);
eta = 1 + (phi^2)*(zeta*((1/cos(%pi*alpha2/180))^2) +0.5);

//results
printf('The efficiency = %.3f.\n',1/eta);
printf('This value appears to be the same as the peak value of efficiency curve.\n');


