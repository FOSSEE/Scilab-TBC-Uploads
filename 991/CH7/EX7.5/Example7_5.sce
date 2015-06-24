//Example 7.5.
clc
format(6)
IDSS=10*10^-3
VGS=-3
ID=4*10^-3
VDD=20
disp("The value of drain current at Q-point,")
IDQ=IDSS/2
IDQ1=IDQ*10^3
disp(IDQ1,"IDQ(mA) = IDSS / 2 =")
disp("and the value of drain-to-source at Q-point,")
VDSQ=VDD/2
disp(VDSQ,"VDSQ(V) = VDD / 2 =")
disp("Therefore, the operating point is at:")
disp(VDSQ,"VDS(V) = ")
disp(IDQ1,"ID(mA) = ")
disp("Also, the drain-to-source voltage,")
disp("    VDS = VDD - ID*RD")
RD=(VDD-VDSQ)/ID
RD1=RD*10^-3
disp(RD1,"Therefore,  RD(k-ohm) =")
disp("The source voltage or voltage across the source resistor RS is")
VS=-VGS
disp("     VS = -VGS = -3 V")
disp("Also,VS = ID*RS ")
RS=VS/ID
disp(RS,"Therefore, RS(ohm) = ")