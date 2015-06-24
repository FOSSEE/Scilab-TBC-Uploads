//Ex1.1
clc
disp("I = K(d^1.5)") //formula used for fusing current
d=0.0031
disp("d = "+string(d)+"inches") //initializing values of diameter
I1=10244*(d^1.5);I2=7585*(d^1.5); I3=5320*(d^1.5); I4=3148*(d^1.5); I5=1642*(d^1.5)  //calculation for fusing current
disp("for Copper, I = 10244*(d^1.5) = "+string(I1)+"Amp.")
disp("for Aluminum, I = 7585*(d^1.5) = "+string(I2)+"Amp.")
disp("for Silver, I = 5320*(d^1.5) = "+string(I3)+"Amp.")
disp("for Iron, I = 3148*(d^1.5) = "+string(I4)+"Amp.")
disp("for Tin, I = 1642*(d^1.5) = "+string(I5)+"Amp.")
