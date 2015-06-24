clc
clear
//Input data
m=[1,1,0]//Miller indices of the plane

//Calculations
x=1/m(1)//Inverse of the miller indices
y=1/m(2)//Inverse of the miller indices
z=%inf//Inverse of the miller indices, since 1/0 is infinity

//Output
disp('The intercepts made by the given plane along the Z axis is infinity. It means that the plane is parallel to the Z axis')
