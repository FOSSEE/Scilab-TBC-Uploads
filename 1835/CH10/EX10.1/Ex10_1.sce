//CHAPTER 10 ILLUSRTATION 1 PAGE NO 268
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
d=0.32;//Diameter of the drum in m
qq=90;//Angle of contact in degree
P=820;//Force applied in N
U=0.35;//Coefficient of friction


U1=((4*U*sind(qq/2))/((qq*(3.14/180))+sind(qq)));//Equivalent coefficient of friction
F=((P*0.66)/((0.3/U1)-0.06));//Force value in N taking moments
TB=(F*(d/2));//Torque transmitted in N.m

printf('Torque transmitted by the block brake is %3.4f N.m',TB)
