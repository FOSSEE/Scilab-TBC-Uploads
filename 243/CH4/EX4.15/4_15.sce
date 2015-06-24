//Example No. 4_15
//Error Evaluation
//Pg No. 80
clear ; close ; clc ;

x = 3.00 ;
y = 4.00 ;
deff('f = f(x,y)','f = x^2 + y^2 ')
deff('df_x = df_x(x)','df_x = 2*x')
deff('df_y = df_y(y)','df_y = 2*y')
ex = 0.005
ey = 0.005
ef = df_x(x)*ex + df_y(y)*ey
disp(ef,'ef = ')