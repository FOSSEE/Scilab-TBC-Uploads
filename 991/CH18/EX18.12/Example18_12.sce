//Example 18.12.
clc
format(5)
disp("Refer fig. 18.18.")
disp("Selection of zener diode")
disp("    Vz = Vo = 10 V")
disp("    Iz_max = 40 mA")
pz=10*40*10^-3  // in W
disp(pz,"    Pz(W) = Vz * Iz_max =")
disp("Hence a 0.5Z 10 zener can be selected")
disp("Value of load resistance, RL")
rlmin=10/(50*10^-3)  // in ohm
disp(rlmin,"  RL_min(ohm) = Vo / IL_max =")
rlmax=10/(30*10^-3)  // in ohm
disp(rlmax,"  RL_max(ohm) = Vo / IL_min =")
disp("Value of input resistance, R")
rmax=(30-10)/((30+40)*10^-3)  // in ohm
disp(rmax,"  Rmax(ohm) = Vin(max)-Vo / ILmin+IZmax =")
rmin=(20-10)/((50+20)*10^-3)  // in ohm
disp(rmin,"  Rmax(ohm) = Vin(min)-Vo / ILmax+IZmin =")
r=(286+143)/2
disp(r,"  R(ohm) = Rmax+Rmin / 2 =")  // answer in textbook is wrong