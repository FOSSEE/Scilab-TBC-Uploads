Hr1 = -249952; // For octane
Hp1 = Hr1;
// Below values are calculated using value fron table 16.4
T2 = 1000; 
Hp2 = -1226577
T3 = 1200;
Hp3 = 46537;
T4 = 1100;
Hp4 = -595964;
Hp = [Hp2 Hp3 Hp4]
T = [T2 T3 T4]
T1 = interpln([Hp ; T],Hp1); // Interpolation to find temperature at Hp1
disp("K",T1,"the adeabatic flame temperature is")