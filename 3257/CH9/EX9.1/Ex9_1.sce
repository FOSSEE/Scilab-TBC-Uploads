// chip dimensions in grinding
clc
D = 150 // diameter in mm
d = 0.03 // depth in mm
C = 3 // per mm^2
r = 12 // radius in mm
v = 0.4 // velocity in m/sec
V = 25 // velocity in m/sec
printf("\n Example 9.1")
l = sqrt(D*d)
t = sqrt((4*v/(V*C*r))*sqrt(d/D))
printf("\n Length of chip is %.2f mm. \n Thickness of chip is %.3f mm.",l,t)
