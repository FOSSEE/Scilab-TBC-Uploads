clc
Vm=3.2
disp("Vm = "+string(Vm)+" V") //initializing value of modified metal work function.
X=3.25
disp("X = "+string(X)+" V") //initializing value of modified electron affinity.
Nd=2*10^16
disp("Nd = "+string(Nd)+" /cm^3") //initializing value of donor concentration.
ni=1.5*10^10
disp("ni = "+string(ni)+" V") //initializing value of intrinsic carrier concentration.
Vt=0.0259
disp("Vt = "+string(Vt)+"V") //initializing value of thermal voltage.
Eg=1.12
disp("Eg = "+string(Eg)+"V") //initializing value of energy gap.
Vfp=(Vt*log(Nd/ni))
disp("Vfp=(Vt*log(Nd/ni))="+string(Vfp)+" V")//calculation.
Vms=-(Vm+(Eg/2)+Vfp-Vm)
disp("Vms=-(Vm+(Eg/2)+Vfp-Vm)="+string(Vms)+" V")//calculation.
