//Example 18.1.
clc
format(7)
im=325/(100+1000)  // in A
x1=im*10^3  // in mA
disp(x1,"(a) Peak value of current,  Im(mA) = Vm / rf+RL =")
idc=295.45/%pi // in mA
disp(idc,"    Average current,  Id.c.(mA) = Im / pi =")
format(8)
irms=295.45/2  // in mA
disp(irms,"    RMS value of current,  Irms(mA) = Im / 2 =")
format(6)
pdc=((94.046*10^-3)^2)*1000  // in W
disp(pdc,"(b) D.C. power output,  Pd.c.(W) = (Id.c.)^2 * RL =")
pac=((147.725*10^-3)^2)*1100 // in W
disp(pac,"(c) AC input power,  Pac = (Irms)^2 * (rf+RL)")
eta=(8.845/24)*100  // in percentage
disp(eta,"(d) Efficiency of rectification,  eta(in percentage) = Pdc / Pac =")