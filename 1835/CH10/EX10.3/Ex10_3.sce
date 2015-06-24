//CHAPTER 10 ILLUSRTATION 3 PAGE NO 270
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
S=3500;//Force on each arm in N
d=0.36;//Diamter of the wheel in m
U=0.4;//Coefficient of friction 
qq=100;//Contact angle in degree

qqr=(qq*(3.14/180));//Contact angle in radians
UU=((4*U*sind(qq/2))/(qqr+(sind(qq))));//Equivalent coefficient of friction
F1=(S*0.45)/((0.2/UU)+((d/2)-0.04));//Force on fulcrum in N
F2=(S*0.45)/((0.2/UU)-((d/2)-0.04));//Force on fulcrum in N
TB=(F1+F2)*(d/2);//Maximum torque absorbed in N.m

printf('Maximum torque absorbed is %3.2f N.m',TB)
