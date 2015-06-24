//Example 10.8
clc
disp("For LM 317, the current I_ADJ = 100 uA")
disp("When R2 is maximum i.e. R2 = 0 then,")
disp("  V_0 = 1.25*[1+R2/R1] + I_ADJ*R2 = 1.25 V")
disp("When R2 is maximum, i.e. R2 = 10 k-ohm then")
vo=(1.25*(1+((10*10^3)/820)))+(100*10*10^-3)
format(6)
disp(vo,"  V_0(in V) = ")
disp("Thus the output voltage can be varied in the range 1.25 V to 17.49 V")
