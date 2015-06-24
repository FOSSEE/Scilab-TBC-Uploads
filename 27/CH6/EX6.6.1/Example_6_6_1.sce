clear;
clear;
clc;
close;
//set(gca(),"auto_clear","off")        //hold on

//Obtain the Jacobian A:
//A = [df/dx df/dy;dg/dx dg/dy];        where f=x(dot),g=y(dot)
//df/dx=partial derivative of "f" w.r.t. "x"
//Thus, A=[0  1-3(y^2); -1  -2*y];

A1=[0 1;-1 0]        //Jacobian at orign
t1=det(A1)
tau1=trace(A1)

disp("Since t1>0 and tau1=0 thus orign is a linear center.")
disp("Furthermore, the system is reversible, Thus by theorem 6.6.1-->")
disp("We conclude that the orign is a nonlinear center.")

A2=[0 -2;-1 -2]        //Jacobian at (-1,1)
t2=det(A2)

A3=[0 -2;-1 2]        //Jacobian at (-1,-1)
t3=det(A3)

disp("Since t2=t3=-2, Thus (-1,1) and (-1,-1) are Saddle Points.")

