//Example 7.7. Refer fig.7.13.
clc
format(5)
VDD=24
R2=8.57*10^6
R1=12*10^6
VP=-2
IDSS=4*10^-3
RD=910
RS=3*10^3
disp("From fig.7.13.,")
VGG=round(VDD*(R2/(R1+R2)))
disp(VGG,"    VGG(V) = VDD*(R2 / (R1+R2)) =")
disp("Also,       ID = IDSS*(1-(VGS/VP))^2")
disp("               = IDSS*(1-((VGG-(ID*RS))/VP))^2,     where VGS = VGG - ID*RS")
disp("Expressing ID and IDSS in mA, we have")
disp("            9ID^2 - 73ID +144 = 0 ")
x=poly(0,'x')
p1=roots((9*x^2) - (73*x) +144)
ans1=p1(1)
p1=roots((9*x^2) - (73*x) +144)
ans2=p1(2)
disp(ans2,"or",ans1,"Therefore,  ID(mA) = ")
disp("As ID = 4.72mA > 4mA = IDSS, this value is inappropriate. So, IDQ=3.39 mA is selected.")
disp("Therefore,")
IDQ=3.39*10^-3
VGSQ=VGG-(IDQ*RS)
disp(VGSQ,"       VGSQ(V) = VGG - (IDQ*RS) =")
format(7)
VDSQ=VDD-(IDQ*(RD+RS))
disp(VDSQ,"and    VDSQ(V) = VDD - (IDQ*(RD+RS)) =")
VDGQ = VDSQ - VGSQ
disp(VDGQ,"Then,  VDGQ(V) = VDSQ - VGSQ")
disp("which is grater than |VP| = 2 V. Hence, the FET is in the pinch-off region.")