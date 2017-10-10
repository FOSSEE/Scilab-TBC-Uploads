//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
w=4//lbf
h=40//lbf/ft
d=2//in
g=32.2//ft/s
//CALCULATIONS
P=(d*%pi)*sqrt(w/(h*g))//sec
V=(d*%pi*d)/(P*12)//ft/s
M=(d*%pi/P)^2*(d/12)//ft/s
//RESULTS
printf('the period of vibration=% f sec',P)
printf('Maximum veloity=% f ft/s',V)
printf('Maximum acceleration=% f ft/s',M)
