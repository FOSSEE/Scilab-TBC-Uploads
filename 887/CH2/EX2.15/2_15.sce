clc
//ex2.15
//KVL over the supermesh, we get eqn-1   -20+4(i1)+8(i2)=0
//Vx=2(i2)   ohm's law
//writing an expression for the source current in terms of mesh currents and substituting Vx from above, we get eqn-2   (1/2)i2=i2-i1
//Putting eqn-1 and eqn-2 in standard form   4(i1)+8(i2)=20 and i1-(1/2)i2=0
//solving for currents in matrix method(Ax=b)
A=[4,8;1,-1/2];      //coeffcient matrix
b=[20;0];      //constant matrix
x=A\b;      //solution
disp(x(1),'Value of i1 in amperes')
disp(x(2),'Value of i2 in amperes')
