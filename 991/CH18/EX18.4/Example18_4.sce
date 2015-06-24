//Example 18.4.
clc
x1=230/5  // in V
vrms=46/2 // in V
vdc=(2*23*sqrt(2))/%pi // in V
idc=(20.7/1000)*10^3 // in mA
pdc=((20.7*10^-3)^2)*900  // in W
piv=2*23*sqrt(2)  // in V
vrrms=sqrt(23^2 - 20.7^2)  // in V
f=2*60  // in Hz
format(6)
disp(x1,"The voltage across the two ends of secondary(in V) = 230 / 5 =")
disp(vrms,"Voltage from center tapping to one end, Vrms(V) =")
format(5)
disp(vdc,"(a) d.c. voltage across the load,  Vdc(V) = 2Vm / pi =")
disp("(b) d.c. current flowing through the load,")
disp(idc,"      Idc(mA) = Vdc / (rs+rf+RL) =")
format(6)
disp("(c) d.c. power delivered to the load,")
disp(pdc,"      Pdc(W) = (Idc)^2 * RL =")
format(4)
disp(piv,"(d) PIV across each diode(in W) = 2Vm =")
format(6)
disp(vrrms,"(e) Ripple voltage,  Vr,rms(V) = sqrt(Vrms^2 - Vdc^2) =")
disp(f,"    Frequency of ripple voltage(in Hz) =")