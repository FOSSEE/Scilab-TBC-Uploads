//Ex5_16
clc
L = 1// assuming inductance
f = 50//operating frequency
XL = 2*%pi*f*L//inductance
RL = 100//assuming load resistance
r = .01//ripple factor

//let, capacitances C1 = C2 = C
//that implies XC1 = XC2 = XC
disp("XL = 2*%pi*f*L = "+string(XL)+"ohm")
disp("r = "+string(r))
XC = ((r*8*XL*RL)/(2^.5))^.5//capacitive resistance
disp("XC = ((r*8*XL*RL)/(2^.5))^.5 = "+string(XC)+"ohm")
disp("XC = 1/wC = 1/(2*pi*f*C) = "+string(XC))
C = 1/(2*%pi*f*XC)//capacitance
disp("C = 1/(2*pi*f*XC) = "+string(C)+"F")
// thus, design parameters are : 
disp("design parameters:")
disp("C1 = C2 = "+string(C)+"F")
disp("RL = "+string(RL)+"ohm")
disp("L = "+string(L)+"H")


// Note : the calculations done in the textbook for the given problem is wrong.
