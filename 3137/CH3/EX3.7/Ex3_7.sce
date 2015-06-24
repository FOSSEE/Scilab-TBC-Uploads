//Initilization of variables
F1=500 //N
F2=-400 //N
F3=-200 //N
C=1500 //N-m
//Distance from point O
x1=2 //m
x2=4 //m
x3=6 //m
//Calculations
R=F1+F2+F3 //N
M_O=(F1*x1)+(F2*x2)+(F3*x3)+C //N-m
//Applying Varignons theorem
x=M_O/R //m
//Result
clc
printf('The resultant of the force system is:%i N\n',R) //N
printf('The moment about point O is:%i N-m\n',M_O) //N-m
printf('The resultant acts at %i meters from point O m',x) //m
