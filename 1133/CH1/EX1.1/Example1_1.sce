//Example 1.1
clc
format(5)
disp("Assume the drop across the LED as 2 V.")
disp("Therefore,    VD = 2 V")
disp("From fig.1.11,  RS = 2.2 k-ohm and VS = 15 V")
is=(15-2)/(2.2)  // in mA
disp(is,"Therefore,    IS(mA) = VS-VD / RS =")