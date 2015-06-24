//Example 10.4
clc
disp("R1 = 5 k-ohm,  R2 = 10 k-ohm")
disp("The IC is 7808 i.e. V_reg = +8 V")
vt=8*(3)
format(3)
disp(vt,"Therefore,  V_out(in V) = V_reg*[1 + R2/R1] =")
disp("Now  R2 = 1 k-ohm then,")
vo=8*(1+(1/5))
format(4)
disp(vo,"V_out(in V) = 8*[1 + 1/5] =")
disp("Thus the V_out can be varied from 9.6 V to 24 V, by varing R2 from 1 k-ohm to 10 k-ohm.")
