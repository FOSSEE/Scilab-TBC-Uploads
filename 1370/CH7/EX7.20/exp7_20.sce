//example7.20
clc
disp("P_DC=500 W, Half wave rectifier")
disp("For half wave rectifier, %eta=40.6%       ...(Assuming maximum)")
disp("Therefore, 40.6=(P_DC*100)/(P_AC)")
disp("Therefore, 40.6=(500*100)/(P_AC)")
p=(500*100)/(40.6)
format(9)
disp(p,"Therefore, P_AC(in W)=")
disp("For the same load, with full wave rectifier the maximum rectifier efficiency is 81.2%")
disp("Therefore, 81.2=(500*100)/(P_AC)")
p=(500*100)/81.2
format(10)
disp(p,"Therefore, P_AC(in W)=")
