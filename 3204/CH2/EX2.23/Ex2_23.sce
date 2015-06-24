//Initilization of variables
W=1000 //N
r=0.30 //m //radius of the wheel
h=0.15 //m //height of the obstacle
//Calculations
theta=asind(1) //degree //P is mini when sin(theta)=1 from eq'n of P
Pmini=(W*sqrt((2*r*h)-(h^2)))/(r*sind(theta)) //N
//Results
clc
printf('The least force required to just turn the wheel over the block is %f N \n',Pmini)
printf('The angle wich should be made by Pmini with AC is %f degree \n',theta)
