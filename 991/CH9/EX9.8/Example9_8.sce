//Example 9.8. refer fig.9.47
clc
hie=3.2*10^3
hfe=100
R1=40*10^3
R2=4.7*10^3
RC=4*10^3
VCC=16
VBE=0.6
RE=1.2*10^3
beta=100
disp("h-parameter analysis :")
disp("Zi = RB || hie")
format(4)
RB=(R1*R2)/(R1+R2)
x1=RB*10^-3
disp(x1,"      RB = R1 || R2 = 40 k-ohm || 4.7 k-ohm =")
format(5)
Zi=(RB*hie)/(RB+hie)
x2=Zi*10^-3
disp(x2,"      Zi = 4.2 k-ohm || 3.2 k-ohm =")
disp("      Zo = RC = 4 k-ohm")
Av=(-hfe*RC)/hie
disp(Av,"      Av = -hfe*RC / hie =")
format(6)
AI=(-hfe*RB)/(RB+hie)
disp(AI,"      AI = -hfe*RB / RB+hie =")
disp("Using r model :")
disp("To find IB,")
VB=(R2*VCC)/(R1+R2)
disp(VB,"      VB = R2*VCC / R1+R2")
disp("Using Thevenin equivalent for input part,")
IB=1.082/(125.4*10^3)
x3=IB*10^6
disp(x3,"IB(uA) = (VB-VBE) / (RB+((1+beta)*RE))")
format(5)
IC=beta*IB
x4=IC*10^3
disp(x4,"      IC(mA) = beta*IB =")
disp(x4,"      IE(mA) ~ IC(mA) =")
IE = IC
format(6)
re=(26*10^-3)/(0.86*10^-3)
disp(re,"      re(ohm) = 26mV / IE =")
format(5)
Zi=(RB*beta*re)/(RB+(beta*re))
x5=Zi*10^-3
disp(x5,"    Zi(k-ohm) = RB || beta*re")
disp(" Zo = RC = 4 k-ohm")
format(6)
Av=-RC/re
disp(Av,"      Av = -RC / re =")
format(7)
AI=(-100*(4.2*10^3))/((4.2*10^3)+(100*30.23))
disp(AI,"      AI = (-beta*RB) / (RB+(beta*re)) =")