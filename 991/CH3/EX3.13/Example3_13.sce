//Example 3.13.
clc
v0=3*10^5
E=910
theta=60
m=9.109*10^-31
q=1.6*10^-19
format(8)
disp("The electron starts moving in the +y direction, but, since acceleration is along the -y direction, its velocity isreduced to zero at time t=t''")
v0y=v0*cosd(theta)
disp(v0y,"v0y(m/s) = v0 * cos(theta) =")
format(10)
ay=(q*E)/m
disp(ay,"ay(m/s^2) = qE / m =")
format(6)
tdash=v0y/ay
x1=tdash*10^9
disp(x1,"t''(ns) = v0y / ay =")