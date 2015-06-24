//Example 18.7. 
clc
Vrms=230/4  // in V
vm=sqrt(2)*57.5  // in V
vdc=(2*81.3)/%pi  // in V
pdc=52^2/1000  // in W
format(5)
disp("(a) The rms value of the transformer secondary voltage,")
disp(Vrms,"      Vrms(V) =")
disp("    The maximum value of the secondary voltage")
disp(vm,"      Vm(V) =")
format(4)
disp(vdc,"Therefore, d.c. output voltage,  Vdc(V) = 2Vm / pi =")
format(6)
disp("(b) D.C. power delivered to the load,")
disp(pdc,"      Pd.c.(W) = (Vdc)^2 / RL =")
disp("(c) PIV across each diode = Vm = 81.3 V")
disp("(d) Output frequency = 2 x 50 = 100 Hz")