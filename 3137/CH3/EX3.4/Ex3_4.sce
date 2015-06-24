//Initilization of variables
F1=-20 //N
F2=30 //N
F3=5 //N
F4=-40 //N
//Distances with respect to point O
x1=6 //m
x2=0 //m
x3=8 //m
x4=13 //m
//Calculations
R=F1+F2+F3+F4 //N
//Applying moment about point O equal to zero
M_O=-(F1*x1)+(F2*x2)+(F3*x3)+(F4*x4) //N-m
//Applying moment about point O equal to R*x
x=M_O/R //m
//Result
clc
printf('The resultant of force system is:%f N\n',R) //N
printf('The moment about point O is:%f N-m\n',M_O) //N-m
printf('The resultant of moment acts at %f meters from point O',x) //m

