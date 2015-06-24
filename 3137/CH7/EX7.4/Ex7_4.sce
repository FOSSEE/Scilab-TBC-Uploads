//Initilization of variables
l=12 //m
theta1=30 //degrees
F1=1000 //N
F2=2000 //N
//Calculation
FG=l*cosd(theta1) //m
DG=(l+(l/2))/cosd(theta1) //m
//Taking moment about point G
A=(F1*l+F2*FG+F1*DG)/(l*3) //N
//Summing forces in horizontal direction
G_x=(2*F1+F2)*sind(theta1) //N
//Summing forces in the vertical direction
G_y=(2*F1+F2)*cosd(theta1)+F1-A //N
//Taking moment about point C
BD=-(A*l)/(l/2) //N
//Taking moment about point D
CE=(A*(l+(l/2)))/FG //N
theta=atand((l/2)/FG) //degrees 
//Summing forces in the vertical direction
CD=(A+(BD*cosd(60)))/cosd(theta) //N
//Result
clc
printf('The values of  the forces are as follows\n')
printf('A=%fN,G_x=%fN,G_y=%fN,BD=%fN,CE=%fN and CD=%fN',A,G_x,G_y,BD,CE,CD)
//Decimal Accuracy causes discrepancy in answers 
