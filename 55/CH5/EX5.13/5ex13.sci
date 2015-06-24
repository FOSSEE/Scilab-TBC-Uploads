A=[1 2 1;2 5 -1;3 -2 -1];     //left hand side of the system of equations
B=[3 -4 5]';                   //right hand side or the constants in the equations
X=[];
X=A\B ;   //unique solution for the system of equations
x=X(1)
y=X(2)
z=X(3)