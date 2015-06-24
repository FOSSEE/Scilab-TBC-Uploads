clear all; clc;
disp("Ex 3_5")
disp("Equilibrium Equations")
disp("F_D*sin(30) - (4/5)*F_C = 0 ....(1)")
disp("-F_D*cos(30) + F_B = 0 ....(2)")
disp("(3/5)*F_C - 90N = 0 ....(3)")
disp("Solving eqn (3) we get the value of F_C")
a=90/(3/5)
printf('\nF_C = %.0f N',a)
disp(" ")
disp("Putting the above value of F_C in eqn (1), we get the value of F_D")
b=(4/5)*a
d1=30
d=d1*%pi/180
c=b/sin(d)
printf('\nF_D = %.0f N',c)
disp(" ")
disp("Putting the above value of F_D in eqn (2), we get the value of F_B")
e=c*cos(d)
printf('\nF_B = %.0f N',e)
disp("The stretch of the spring s_AB is:")
f1=e/5000
f=f1*1000
printf('\n\ns_AB = %0.1f mm',f)
