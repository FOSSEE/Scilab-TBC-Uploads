clc
clear
//Input data
F=[6,2]//Constant force in vector form 6i+2j in N
s=[3,5]//Displacement in vector form 3i+5j in N

//Calculations
W=(F(1)*s(1))+(F(2)*s(2))//Workdone in J
q=acosd(W/(sqrt(F(1)^2+F(2)^2)*sqrt(s(1)^2+s(2)^2)))//Angle between Force and displacement in degrees

//Output
printf('Workdone by the force is %3.0f J \n Angle between Force and displacement is %3.1f degrees',W,q)
