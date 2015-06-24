clear;
clc;
//Example 3.1 [Heat Loss through a Wall]

//assumptions:- 
//1)Heat transfer through the wall is steady 
//2)Heat transfer is one-imensional
//Properties: 
k=0.9;//[W/m.K]
disp("W/m.K",k,"The thermal conductivity is given to be")
//Heat transfer through the wall is by conduction 
A=(3*5);//[m^2]
disp("m^2",A,"The area of the wall is")
T1=16;//temperature of inner wall[degree Celcius]
T2=2;//Temperature of Outer wall[degree Celcius]
delta_T=T1-T2;//Temperature Gradient[degree Celcius]
L=0.3;//Length of wall along which heat is being transferred[m]
R_wall=L/(k*A);//[degree Celcius/W]
disp("degree Celicus/W",R_wall,"Thermal Resistnace offered by the wall is")
Q_=(delta_T/R_wall);//[W]
disp("W",Q_,"The steady rate of heat transfer through the wall is ")
