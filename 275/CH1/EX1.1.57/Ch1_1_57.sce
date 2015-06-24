clc
disp("Example 1.57")
printf("\n")
disp("To find diode current at 25c and 75c")
RL=150
//both diode voltage drop as given in fig 1.47
Vr1=0.7   //for silicon
Vr2=0.3   //for Germanium
Vdc=5
//apply KVL to given circuit
IF1=(Vdc-(Vr1+Vr2))/RL
//for silicon diode 
v=(-1.8*10^-3)
T1=25
T2=75
VFT2=Vr1+((T2-T1)*v)
//for Germanium Diode
v=(-2.2*10^-3)
VFT2!=Vr2+((T2-T1)*v)
IF2=(Vdc-(VFT2!+VFT2))/RL
printf("Diode current at 25c and 75c =\n%f ampere\n%f ampere\n",IF1,IF2)


