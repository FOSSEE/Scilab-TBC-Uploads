clc
//Initialization of variables\
sf=0.00007
n=0.013
gam=9.81*1000
V=0.45 //m/s
Q=1.4 //m^3/s
//calculations
by=Q/V
x=poly(0,"x")
y=roots(x^2 -2.66*x +1.55)
b=by ./y
//results
printf("y = ")
disp( y )
printf("corresponding b=")
disp(b)
