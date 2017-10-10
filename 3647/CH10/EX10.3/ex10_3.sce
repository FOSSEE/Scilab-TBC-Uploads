//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
l=2//units of length
a=sqrt(3)//degree
b=30//dgree
c=60//degree
v=1//length
Pc=1.154//tonf compressive
//CALCULATIONS
R=(v*l)/a//tonf
D=sqrt((R)^2+(v)^2)//tonf
T=41//degree
P=l*cosd(b)//tonf tensile
Pa=Pc*cosd(b)//tonf tensile
p=(l*cosd(b))/((1/2)+(Pc))/(1/2)//tonf compressive
//RESULTS
printf('the resolving horizontally =% f tonf compressive',p)
