// Chapter 4_Carrier Transport Phenomenon
//Caption_Graded impurity distribution
//Ex_5//page 153
T=300
x=0   //given 0<x<1 micrometer
Nd=10^16-10^19*x
//Taking the derivative of donor concentration , we have d(ND)/dx=-10^19
e=1.6*(10^-19)
Ex=-(0.0259)*(-10^19)/Nd
printf('The induced electric field is %1.1fd V/cm',Ex)