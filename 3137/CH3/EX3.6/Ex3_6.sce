//Initilization of variables
F1=20 //lb
F2=20 //lb
F3=-40 //lb
//Distance from point O
x1=3 //ft
x2=3 //ft
//Calculations
R=F1+F2+F3 //lb
M_O=-(F1*x1)+(F2*x2) //lb-ft
//Results
clc
printf('The resultant of the force system is:%i lb\n',R) //lb
printf('The Moment about point O is:%i lb-ft',M_O) //lb-ft
