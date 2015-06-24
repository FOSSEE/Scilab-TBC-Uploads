clc;
//Example 24.7
//page no 358
printf("Example 24.7 page no 358\n\n");
//a cylindrical cup open to the atmosphere is filled with liquid to a height of 7 cm
//rotated around it's axis
//calculation of an angular velocity that will cause the liquid to start spilling 
h=0.03//height,m
R=0.03//radius,cm
//applying eq. 24.22
g=9.807//grav. acc
omega=sqrt(2*h*g/(R^2))
omega=36.2//printing mistake in book
//calculation of pressure at point A and B that is P_a and P_b
z=.1//liquid height above point A and B,m
rho=1010//density of liquid,kg/m^3
P_a = rho*g*z
P_b=P_a//from symmetry P_a = P_b
printf("\n pressure P_a=%f Pa_gauge\n pressure P_b=%f Pa_gauge",P_a,P_b);
z_c=0.04//liquid height above point c,m
P_c=rho*g*z_c//pressure at point c
printf("\n pressure P_c=%f Pa_gauge",P_c);
//to obtain the film thicknes,we have to find the original height 
z_l=0.07//liquid height ,m
h_o=z_l-z_c//original height
r = 100*sqrt(2*h_o*g/(omega^2))//100 for centimeter
printf("\n r=%fcm ",r);
R=3
t_f=R-r//thikness of film
printf("\n thickness film t_f=%f m",t_f);//printing mistake in book




