clc;
//Example 19.1
//page no. 246
printf("Example 19.1 page no 246\n\n");
//we have to find pressure at different point in a oil tank
//apply manometer equation between point 1 and 2
//since rho1=rho2,z1=z2
//it gives P1=P2
//applying manometer equation between points 2 and 3
rho_oil=0.8*1000//density of oil
//since rho3=rho_oil=rho2
rho3=rho_oil
z_32=.4//height difference between point 2 and 3
g=9.807//grav. acc.
P7=0//pressure at point 7,on gauge basis
z_76=0.8//height difference between point 6 and 7
rho_hg=13600//density of mercury
P6=P7 + rho_hg*g*z_76//pressure at point 6
P5=P6//pressure at point 5
rho_air=1.2//density of air
z_54=1//height difference between point 5 and 4
P4=P5 + rho_air*g*z_54//pressure at point 4 
P3=P4//pressure at point 3
P2=P3 + rho_oil*g*z_32//pressure at point 2
P1=P2//air pressure in the oil tank
printf("\n pressure P1=%f Pag",P1); 
