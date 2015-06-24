clc
disp("the solution of eg 5.2 -->Discretization in 1-D space");
//boundary conditions are: x=0 at y=0; dy/dx=1 at x=1
disp("to solve this problem we will take delta x=.5 since we have to find the value at x=.5");
delta_x=.5
y_1=0
//using central difference eqn
dy_by_dx=1                 //at x=1, i=3
//y_4=dy/dx*2*delta_x+y_2             sincefrom B.C. at node 3

//y_2=delta_x^2+y_3-delta_x           on substituting the value of y_4
y_3=-(2*delta_x^2+2*(delta_x^2-delta_x)-y_1) //on substituting the value of y_2
y_2=delta_x^2+y_3-delta_x
disp(y_2,"the value of y at x=.5 is");