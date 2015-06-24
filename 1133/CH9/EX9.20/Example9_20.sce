//Example 9.20
clc
disp("The requirement is that the door must be open for 15 sec after receiving a trigger signal and then gets shut door automatically. This requires IC 555 in a monostable mode with a pulse width of 15 sec.")
disp("Therefore,  W = 15 sec")
disp("Now         W = 1.1 RC")
disp("Therefore, 15 = 1.1 RC")
disp("Choose      C = 100 uF")
r=(15/(1.1*100*10^-6))*10^-3
format(8)
disp(r,"Therefore,  R(in k-ohm) =")
disp("The designed circuit is shown in the fig. 9.80")
disp("The supply voltage 10 or 15 V has no effect on the operation of the circuit or the values of R and C selected.")
