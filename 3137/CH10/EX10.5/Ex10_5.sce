//Initilization of variables
r=50 //mm
L1=75 //mm
L2=%pi*r //mm
L3=61.2 //mm
theta1=45 //degrees
theta2=60 //degrees
//Calculations
x_bar=[(L1/2)*cosd(theta1),L1*cosd(theta1)+r,L1*cosd(theta1)+100+(L3/2)*cosd(theta2)] //mm
y_bar=[(L1/2)*sind(theta1),L1*sind(theta1)+(2*r)/%pi,(L3/2)*sind(theta2)] //mm
//Centroid Calculations
x=(L1*x_bar(1)+L2*x_bar(2)+L3*x_bar(3))/(L1+L2+L3) //mm
y=(L1*y_bar(1)+L2*y_bar(2)+L3*y_bar(3))/(L1+L2+L3) //mm
//Result
clc
printf('The centroid is as follows x=%f mm and y=%fmm',x,y)

