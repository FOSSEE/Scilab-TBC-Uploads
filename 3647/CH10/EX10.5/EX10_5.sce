//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
R1=5//tonf
R2=7//tonf
P=5.77//tonf,compressive 
m=11.56//tonf
a=30//degree
//CALCULATIONS
P=-sqrt(cosd(a)+m*sqrt(cosd(a))+2*0.5-R1*2)//tonf
//RESULTS
printf('the methods of sections in the force=% f tonf',P)
