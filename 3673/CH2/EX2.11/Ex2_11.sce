//Example 2_11 page no:74
clc
//mesh equation for the circuit is
I1=10;//current in ampere
resistance=[5,-2;-2,3]
volt=[20,10]
current=inv(resistance)'*volt'//calculating current I1 I2 I3
disp(I1,"the current I1 is (in ampere)")
disp(current(1),"the current I2 is (in ampere)")
disp(current(2),"the current I3 is (in ampere)")
