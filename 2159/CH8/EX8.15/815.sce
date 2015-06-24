// problem 8.15
x1=0
x2=60
V1=30
V2=25
m=0.8
Fx=m*((V1*cosd(x1))-(V2*cosd(x2)))
Fy=m*((V1*sind(x1))-(V2*sind(x2)))
R=(Fx*Fx+Fy*Fy)^0.5
z=atand(-Fy/Fx)
disp(z,R,"magnitude and direction of resultant force ")

