//CHAPTER 10 ILLUSRTATION 2 PAGE NO 269
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
m=120;//Mass of rider in kg
v=16.2;//Speed of rider in km/hr
d=0.9;//Diameter of the wheel in m
P=120;//Pressure applied on the brake in N
U=0.06;//Coefficient of friction

F=(U*P);//Frictional force in N
KE=((m*(v*(5/18))^2)/2);//Kinematic Energy in N.m
S=(KE/F);//Distance travelled by the bicycle before it comes to rest in m
N=(S/(d*3.14));//Required number of revolutions

printf('The bicycle travels a distance of %3.2f m and makes %3.2f turns before it comes to rest',S,N)
