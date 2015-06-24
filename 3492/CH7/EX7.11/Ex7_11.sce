clc
//Chapter7
//Ex_11
//Given
//letE=epsiolon
Er_100c=2.69
Er_25c=2.60
f=1*10^3 // in Hz
w=2*%pi*f
C_25c=560*10^-12 // in Farads
//Gp=w*C*tan(delta)
//let x=tan(delta)=0.002
x=0.002
Gp=w*C_25c*x
disp(Gp,"Equivalent parallel conductance at 25 degree celcius in ohm^-1 is")
//at 100 c
x=0.01
C_100c=C_25c*Er_100c/Er_25c
Gp=w*C_100c*x
disp(Gp,"Equivalent parallel conductance at 100 degree celcius in ohm^-1 is")
