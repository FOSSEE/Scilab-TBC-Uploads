//Example 18.13.
clc
format(6)
disp("The minimum Zener current is IZ(min) = 5 mA when the input voltage is minimum")
disp("Here the input voltage varies between 10 V +- 20% i.e. 8 V and 12 V")
disp("Therefore, the input voltage Vi(min) = 8 V")
disp("Therefore,")
rl=5/(20*10^-3)  // in ohm
disp(rl,"    RL(ohm) = Vo / IL =")
r=(8-5)/((5+20)*10^-3)  // in ohm
disp(r,"Hence, the series resistance  R(ohm) = Vi(min)-Vo / IZ(min)+IL =")
disp("The various values are given in the Zener regulator shown in Fig. 18.19")