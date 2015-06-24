clc
clear
//Input data
p=[1.2,1.8,2]//Primitives of the crystal in angstroms
m=[2,3,1]//Miller indices of the plane
x=1.2//Intercept made by the plane along the X-axis

//Calculations
mx1=1/m(1)//Inverse of the miller indices
mx2=1/m(2)//Inverse of the miller indices
mx3=1/m(3)//Inverse of the miller indices
my1=mx1*6//Multiplying with the L.C.M
my2=mx2*6//Multiplying with the L.C.M
my3=mx3*6//Multiplying with the L.C.M
x1=my1*p(1)//Multiplying with the primitives of the crystal
x2=my2*p(2)//Multiplying with the primitives of the crystal
x3=my3*p(3)//Multiplying with the primitives of the crystal
l2=(x*x2)/x1//Length of intercept along Y axis
l3=(x*x3)/x1//Length of intercept along Z axis

//Output
printf('The length of the intercepts made by the plane along Y and Z axes are %3.1f angstroms and %i angstroms',l2,l3)

