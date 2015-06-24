//Initilization of variables
F1=-100 //lb
F2=200 //lb
F3=-200 //lb
F4=400 //lb
F5=-300 //lb
//Distance with respect to point O
x1=0 //ft
x2=2 //ft
x3=5 //ft
x4=9 //ft
x5=11 //ft
//Calculation
R=F1+F2+F3+F4+F5 //lb
M_O=(F1*x1)+(F2*x2)+(F3*x3)+(F4*x4)+(F5*x5) //N-m
//Result
clc
printf('The resultant of the force system is:%i lb \n',R) //lb
printf('The moment about point O is:%i lb-ft',M_O) //lb-ft
