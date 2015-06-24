//Initilization of variables
F1=125 //N
F2=200 //N
F3=340 //N
F4=180 //N
x1=4 //m
x2=3 //m
x3=10 //m
x4=15 //m
x5=17 //m
//Calculations
Rb=(-F1*x1+F2*x2+F3*x3+F4*x4)/x5//moment about point A
Ra=(F1*(x1+x5)+F3*(x5-x3)+F2*(x5-x2)+F4*(x5-x4))/x5 //moment about point B
//Result
clc
printf('The reaction at A is %fN and reaction at B is %fN',Ra,Rb)
