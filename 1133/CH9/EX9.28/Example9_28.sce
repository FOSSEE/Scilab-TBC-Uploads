//Example 9.28
clc
disp("T_ON = T_OFF = 0.5 ms")
disp("Therefore,  T = T_ON + T_OFF = 1 ms")
disp("i.e.    f = 1/T = 1 kHz")
disp("Now  T_d = T_OFF = 0.69*R_B*C")
disp("Choose    C = 0.1 uF")
rb=((0.5*10^-3)/(0.69*0.1*10^-6))*10^-3
format(6)
disp(rb,"Therefore,  R_B(in k-ohm) =")
disp("Now duty cycle is 50% so  R_A = R_B = 7.246 k-ohm")
disp("Practically a modified circuit is required for 50% duty cycle where diode is connected across R_B and charging takes place through R_A and diode. And R_B must be equal to sum of R_A and diode forward resistance. So to have perfect square wave, R_A is kept variable i.e. pot of say 10 k-ohm in this case. It is then adjusted to obtain precise square wave. The resistance required in series with LED to be connected is,")
disp("R = V_0-V_LED / I_LED")
disp("Assuming  V_LED = 0.7 V")
r=(5-0.7)/(50*10^-3)
format(3)
disp(r,"Current limiting  R(ohm) = ")
disp("The voltage of R is")
disp("P = (50*10^-3)^2 * 100")
p = ((50*10^-3)^2)*100
disp(p,"P(in W) =")
disp("Both resistors R can be of 1/4 W")
disp("The required circuit is shown in the fig.9.102")
