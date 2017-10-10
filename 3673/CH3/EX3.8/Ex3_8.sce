//Example 3_8 page no:125
clc
Rs=25//resistance in ohm
Rl=Rs//according to maximum power transfet theorem
I=50/(Rl+Rs)
P=I^2*Rl
disp(P,"the maximum power delivered to the load is (in watts)")
