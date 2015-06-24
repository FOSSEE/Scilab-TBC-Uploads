// problem 8.14 sce
d=0.05
V1=25
x1=30
x=50
x2=x1+x
g=10
p1=1000
a=3.142*d*d/4
w=g*p1
Fx=(w*a*V1*V1*(cosd(x1)-cosd(x2)))/g
Fy=(w*a*V1*V1*(sind(x1)-sind(x2)))/g
F=(Fx*Fx+Fy*Fy)^0.5
z=atand(-Fy/Fx)
disp(z,Fx,Fy,"resultant force,angle made by the resultant force with the horizontal")
