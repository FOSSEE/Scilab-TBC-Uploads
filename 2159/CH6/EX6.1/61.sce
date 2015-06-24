// problem 6.1
Rn=1700
v=0.744*(10^-4)
d=0.05
V=(Rn*v)/d
Vmax=2*V
x=0.00625
r=(d/2)-x
V1=Vmax*(1-(2*r/d)^2)
disp(V1,"velocity at the point 6.25 mm from the wall in m/sec")
