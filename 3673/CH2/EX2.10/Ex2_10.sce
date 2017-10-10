//Example 2_10 page no:74
clc
//mesh equation for the given circuit is
resistance=[15,-10,-5;-15,12,6;0,1,-1]
U=[40.0005,23.3326,-11.3332]
II=inv(resistance)'*U'//calculating current I1 I2 I3
current=II(1,1)-II(3,1)
disp(current,"current flowing through 5 ohms (in ampere)")
