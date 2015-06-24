//exmaple 2.6
clc
disp("The circuit is Wien bridge oscillator using op-amp. The gain of the op-amp is")
a=1+3
disp(a,"A = 1 + R3/R4 =")
disp("So  A > 3")
disp("This satisfies the required oscillating condition. The feedback is given to non-inverting terminal ensuring the zero phase shift. Hence the circuit will work as the oscillator.")
f=1/(2*%pi*5.1*0.001)
format(8)
disp(f,"f(in kHz) = 1 / 2*pi*R*C =")
disp("This will be the frequency of oscillations")
