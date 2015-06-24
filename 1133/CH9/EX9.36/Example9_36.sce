//Example 9.36
clc
disp("For 12-bit DAC, step size is 8 mV")
v=(8*10^-3)*((2^12)-1)
format(6)
disp(v,"  V_0FS = 8 mV * 2^12 - 1 =")
r=((8*10^-3)/32.76)*100
format(8)
disp(r,"% Resolution = 8mV/32.76V * 100 =")
q=(8*10^-3)*1389
format(7)
disp(q,"The output voltage for the input 010101101101 is = 8mV * 1389 =")
