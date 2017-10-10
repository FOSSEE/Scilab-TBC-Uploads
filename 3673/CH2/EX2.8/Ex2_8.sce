//Example 2_8 page no:69
clc
//mesh equations for the cirucuit is
resistance=[18,5,-3;5,8,1;-3,1,4]
volt=[50,10,-5]
current=inv(resistance)'*volt'//calculating current I1 I2 I3
disp(current(1),"the mesh current I1 in the circuit are (in ampere)")
disp(current(2),"the mesh current I2 in the circuit are (in ampere)")
disp(current(3),"the mesh current I3 in the circuit are (in ampere)")
