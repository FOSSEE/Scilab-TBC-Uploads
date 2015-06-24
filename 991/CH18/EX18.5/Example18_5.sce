//Example 18.5.
clc
format(6)
disp("(a) We know that the maximum value of current flowing through the diode for normal operation should not exceed 80% of its rated current.")
imax=0.8*400  // in mA
disp(imax,"Therefore,  Imax(mA) =")
disp("The maximum value of the secondary voltage,")
vm=sqrt(2)*100  // in V
disp(vm,"      Vm(V) =")
disp("Therefore, the value of load resistor that gives the largest d.c. power output")
format(5)
RL=141.4/(320*10^-3)
disp(RL,"      RL(ohm) = Vm / Imax =")
vdc=(2*141.4)/%pi
disp(vdc,"(b) D.C.(load) voltage,  Vdc(V) = (2*141.4)/pi =")
format(6)
idc=90/442
disp(idc,"    D.C. load current,  Idc(A) = Vdc / RL =")
disp("(c) PIV of each diode  = 2Vm = 282.8 V")