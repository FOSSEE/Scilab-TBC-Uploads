clc
clear
//Initialization of variables
zm=0.216
pm=62.3 //lbm/ft^2
p1=0.0736 //lbm/ft^2
g=32.2
d=4
//calculations
H=zm*(pm-p1)/12/p1
V=sqrt(2*g*H)
m=%pi/4 *d^2 *V*p1
//results
printf("average velocity = %.1f ft/sec",V)
printf("\n mass flow rate = %.1f lbm/sec",m)

