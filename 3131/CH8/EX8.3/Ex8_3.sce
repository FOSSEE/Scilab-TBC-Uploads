clear all; clc;
disp("Ex 8_3")
//Using the eqautions of equilibrium and eqautions of friction and after simplifyig, we get a qaudratic equation: mu_s^2-4.419*mu_s+1=0
//solving the above equation for mu_s:
//coefficients of the quadratic equation
a=1
b=-4.619
c=1
d=sqrt(b^2-(4*a*c))
mu_s1=((-b)+d)/(2*a)
mu_s2=((-b)-d)/(2*a)
printf('\n\n The two values of mu_s are mu_s1 = %0.3f and mu_s2 = %0.3f',mu_s1,mu_s2)
disp(" ")
disp("Coefficient of friction lies between 0 and 1 always. Hence, we select mu_s2 as the coefficient of static friction at A and B")
disp("mu_s = 0.228")
