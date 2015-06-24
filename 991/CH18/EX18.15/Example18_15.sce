//Example 18.15.
clc
format(6)
rl=5/(10*10^-3)  // in ohm
disp(rl,"Here, load resistance is RL(ohm) = Vo / IL =")
iz=400/5  // in mA
disp(iz,"Maximum Zener Current Iz_max(mA) =")
disp("The minimum input voltage required will be when Iz = 0. Under this condition,")
disp("    I = IL = 10 mA")
disp("Minimum input voltage  Vi_min = Vo + IR")
vi=10-2  // in V
disp(vi,"Hence,    Vi_min(V) =")
disp("or    8 = 5 + (10*10^-3)R")
rmax=3/(10*10^-3)  // in ohm
disp(rmax,"Therefore,  Rmax(ohm) =")
disp("Now, maximum input voltage, Vi_max = 5 + [(80+10)10^-3]R")
rmin=7/(90*10^-3)  // in ohm
disp(rmin,"    Rmin(ohm) =")
disp("The value of R is chosen between 77.77 ohm and 300 ohm")