clear all; clc;
disp("Ex 3_4")
//Weight of lamp W=78.5N
disp("Equilibrium Equations")
disp("T_AB - T_AC*cos(30)= 0 ....(1)")
disp("T_AC*sin(30) - 78.5N = 0 ....(2)")
disp("Solving eqn (2) we get the value of T_AC")
a1=30
a=a1*%pi/180
b=78.5
c=b/sin(a)
printf('\n\nT_AC = %0.1f kN',c)
disp(" ")
disp("Putting the above value of T_AC in eqn (1), we get the value of T_AB")
d=c*cos(a)
printf('\n\nT_AB = %0.1f kN',d)
disp("The stretch of the spring s_AB is:")
e=d/300
printf('\n\ns_AB = %0.3f m',e)
f=0.4
disp(" ")
disp("The stretched length of the spring l_AB is:")
g=f+e
printf('\n\nl_AB = %0.3f m',g)
h=2
i=h-g
j=i/cos(a)
printf('\n\nl_AC = %0.2f m',j)
