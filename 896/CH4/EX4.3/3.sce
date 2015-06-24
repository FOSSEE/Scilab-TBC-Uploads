clc
//Example 4.3
//Calculate the kinetic energy of bullet fired from a airplane
v_bp=2000;//ft/s vel of bullet wrt plane
v_p=-1990;//ft/s
v_b=v_bp+v_p//ft/s vel of bullet wrt ground
m=0.01;//lbm
KE=(m*v_b^2/2)*(1.356/32.2)//J
printf("the kinetic energy of bullet fired from a airplane is %f J",KE);