//Solutions to Problems In applied mechanics
//A N Gobby
clear;

clc
//initialisation of variables
v=4//in
w=20//tonf
d=10//ft
m=13400//tonf/in^2
q=2//in
l=120//in
//CALCULATIONS
Fmax=q*(w)/(%pi/v*v^2)//tonf/in^2
M=Fmax*l/m//in
P=w*M//in tonf
//RESULTS
printf('The maximum instantneous stress=% f tonf/in^2',Fmax)
printf('The maximum elongation is=% f in',M)
printf('the strain energy stored=% f in tonf',P)