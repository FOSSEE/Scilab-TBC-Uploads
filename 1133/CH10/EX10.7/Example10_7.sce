//Example 10.7
clc
disp("The resistance used are,")
disp("  R1 = 220 ohm  and  R2 = 1.5 k-ohm")
disp("while for LM 317,  I_ADJ = 100 uA")
disp("Therefore,  V_0 = 1.25*[1+R2/R1] + I_ADJ*R2")
vo=(1.25*(1+((1.5*10^3)/220)))+(100*1.5*10^-3)
format(5)
disp(vo,"Therefore,  V_0(in V) =")
