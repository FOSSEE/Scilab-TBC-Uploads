//Inilitization of variables
Lab=12 //m
Mc=40 //kN-m 
Md=10 //kN-m
Me=20 //kN-m
Fe=20 //kN //force acting at point E
//Calculations
Xa=-(Fe) //kN //take sum Fx=0
Rb=(Md+Me-Mc)/Lab //N //take moment at A
Ya=-Rb //N //take sum Fy=0
//Results
clc
printf('The vertical reaction (upwards) at A is %f kN \n',Ya)
printf('The horizontal reaction (towards A) is %f kN \n',Xa)
printf('The reaction (downwards) at B is %f kN \n',Rb)
