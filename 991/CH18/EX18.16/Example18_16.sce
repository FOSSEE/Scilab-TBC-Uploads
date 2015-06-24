//Example 18.16.
clc
format(7)
il=(24/1200)*10^3  // in mA
disp(il,"The load current,  IL(mA) = Vo / RL =")
iz=600/24  // in mA
disp(iz,"Max. Zener current,  Iz_max(mA) =")
rmax=(32-24)/((20+25)*10^-3)  // in ohm
disp(rmax,"  Rmax(ohm) = Vi-Vo / IL_min+IZ_max =")