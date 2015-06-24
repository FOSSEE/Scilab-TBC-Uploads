//example6.5
clc
disp("Given values are, R_m=500 ohm, I_m=40 uA and V=10 V")
r=(10/(40*10^-6))-500
format(8)
disp(r,"Now, (R_s)[in ohm]=V/(I_m) - R_m =")
disp("This is the required multiplier resistance")
