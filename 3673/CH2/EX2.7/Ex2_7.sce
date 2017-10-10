//Example 2_7 page no:69
clc
//mesh current equation for the circuit
resistance=[7,-2;-2,12]
volt=[10,-50]
current=inv(resistance)'*volt'//calculating current I1 I2 I3
disp(current,"current flowing in the circuit I1 and I2 (in ampere)")
