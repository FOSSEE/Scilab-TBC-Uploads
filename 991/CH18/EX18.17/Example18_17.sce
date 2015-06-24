////Example 18.17.
clc
format(6)
vi=15+3   // in V
disp("Refer to fig.18.24. We know that")
disp(vi,"    Vi_min(V) = Vo + 3V =")
vi=18+1  // in V
disp("Assuming the ripple voltage Vr = 2V(max), the input voltage is")
disp(vi,"  Vi(V) = Vi(min) + Vr/2 =")
vz=19/2  // in V
disp(vz,"Then    Vz(V) = Vi /2 =            (use the zener diode 1N758 for 10V)")
disp("Therefore,  Vz = 10 V")
disp("            Iz = 20 mA")
r1=(19-10)/(20*10^-3)  // in ohm
disp(r1,"    R1(ohm) = Vi-Vz / Iz =")
disp("Let    I2 = IB(max) = 50 uA")
r2=((15-10)/(50*10^-6))*10^-3  // in k-ohm
disp(r2,"    R2(k-ohm) = Vo-Vz / I2 =")
r3=(10/(50*10^-6))*10^-3  // in k-ohm
disp(r3,"    R3(k-ohm) = Vz / I2 =")
disp("Select    C1 = 50 uF")
disp("Specification of transistor Q1")
vce=19+1  // in V
disp(vce,"    VCE_max(V) = Vi_max(V) = Vi + Vr/2 =")
disp("    IE = IL = 50 mA")
p=((19-15)*50)  // in mW
disp(p,"    P(mW) = VCE*IL = (Vi-Vo) * IL =")
disp("Use the transistor 2N718 for Q1")