//Example 6.7
clc
disp("The maximum power dissipation occurs when the value of V_m is")
disp("V_m = 2/pi * V_CC")
disp("Now  P_ac = V_m*I_m / 2")
disp("So at the time of maximum power dissipation, it is")
disp("P_ac = 2/pi * V_CC*I_m/2 = V_CC*I_m / pi")
disp("Now  P_DC = 2/pi * V_CC * I_m")
disp("Hence,  %eta = P_ac/P_DC * 100 = (V_CC*I_m/pi)/(2*V_CC*I_m/pi)*100 = 50%")
disp("Thus efficiency is just 50% when the power dissipation is maximum. While the maximum effiency of the class B operation is 78.5%")
