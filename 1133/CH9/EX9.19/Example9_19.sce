//Example 9.19
clc
disp("Fig. 9.79 shows monostable circuit used to drive the relay.")
disp("This relay should be energized for 5 second to hold heater ''ON'' for 5 seconds. Thus, T_ON for monostable is 5 seconds.")
disp("We know that the pulse width is given by,")
disp("            W = 1.1 RC")
disp("Therefore,  5 = 1.1 RC")
disp("Now, there are two unknowns. In this case, we have to select value for capacitor and with the selected value we have to find the value of resistance from the formula.")
disp("Therefore,  If capacitor value is 10 uF")
disp("then    5 = 1.1*R*10 uF")
r=(5/(1.1*10*10^-6))*10^-3
format(7)
disp(r,"Therefore,  R(in k-ohm) =")
disp("The calculated value is not standard value, but we can adjust this value by connecting variable resistance i.e. potentiometer.")
