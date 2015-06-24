clc,clear
//Example 6.11
//To determine product and ratio of complex numbers using formula

//given values 
z1 = 6*(cosd(70)+ %i*sind(70));
z2 = 2*(cosd(31)+ %i*sind(31));

//arguements of complex numbers
theta1=phasemag(z1);
theta2=phasemag(z2);
//modulus of complex numbers
r1=abs(z1);
r2=abs(z2);
theta_1p2 =theta1 + theta2  ;//theta1 + theta 2
theta_1m2 =theta1 - theta2  ;//theta1 - theta 2
//according to the formula used in book
product = r1*r2*(cosd(theta_1p2)+%i*sind(theta_1p2));
ratio = (r1/r2)*(cosd(theta_1m2)+%i*sind(theta_1m2));

printf('z1*z2 = %.0f*(cos(%.0f)+i*sin(%.0f))\n',r1*r2,phasemag(product),phasemag(product))
printf('z1/z2 = %.0f*(cos(%.0f)+i*sin(%.0f))\n',r1/r2,phasemag(ratio),phasemag(ratio))
