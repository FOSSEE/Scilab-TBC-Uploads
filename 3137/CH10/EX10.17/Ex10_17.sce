//Initilization of variables
tx=30 //degrees
ty=45 //degrees
tz=60 //degrees
//Calculations
V=[10,15,25] //in^3
x_bar=[4,12,24] //in
y_bar=[4*cosd(tx),-6*cosd(ty),-4*cosd(tz)]
z_bar=[-4*sind(tx),6*sind(ty),-4*sind(tz)]
//Centroid calculations
x=(V(1)*x_bar(1)+V(2)*x_bar(2)+V(3)*x_bar(3))/(V(1)+V(2)+V(3)) //in
y=(V(1)*y_bar(1)+V(2)*y_bar(2)+V(3)*y_bar(3))/(V(1)+V(2)+V(3)) //in
z=(V(1)*z_bar(1)+V(2)*z_bar(2)+V(3)*z_bar(3))/(V(1)+V(2)+V(3)) //in
//Result
clc
printf('The centroid is at x=%f in,y=%f in and z=%f in',x,y,z)
