//Example 18.3.
clc
format(6)
x1=230/5 // in V
vm=sqrt(2) * 46  // in V
vdc=65/%pi  // in V
im=65/300  // in A
pm=0.217^2 * 300  // in W
idc=20.7/300 // in A
format(5)
pdc=(0.069^2)*300 // in W
disp(x1,"(a) The transformer secondary voltage(in V) =")
format(4)
disp(vm,"    Maximum value of secondary voltage,  Vm(V) =")
format(5)
disp(vdc,"    Therefore, d.c. output voltage,  Vd.c.(V) = Vm / pi =")
disp("(b) PIV of a diode  = Vm = 65 V")
format(6)
disp(im,"(c) Maximum value of load current,  Im(A) = Vm / RL =")
disp("    Therefore, maximum value of power delivered to the load,")
format(5)
disp(pm,"           Pm(W) = Im^2 * RL =")
format(6)
disp(idc,"(d) The average value of load current,  Id.c.(A) = Vdc / RL")
disp("    Therefore, average value of power delivered to the load,")
format(5)
disp(pdc,"        Pd.c.(W) = (Idc)^2 * RL =")