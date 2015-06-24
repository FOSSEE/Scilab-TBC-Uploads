clc;funcprot(0);//Example 1.7
//Initilisation of Variables
a=5;b=-24;c=0;.....//Constituents of the temperature distribution profile in the form a(x^2)+b(x)+c
x1=0.1;.....//Distance 1 in m
x2=0.2;......//Distance 2 in m
K=-50;.........//thermal conductivity of wall in W/m*degrees celcius
//calculations
A=a*2;B=b*1;C=0;.........//After differentiating the above temperature distribution profile
q1=K*(A*x1+B);.......//heat flux wall across the wall at x=10 in W/m*2
q2=K* (A*x2+B);.......//heat flux wall across the wall at x=20 in W/m*2
disp(q1,"heat flux wall across the wall at x=10cm in W/m*2")
disp(q2,"heat flux wall across the wall at x=20cm in W/m*2")
