//Example 9.22. refer fig.9.88
clc
format(6)
VDD=12
VSS=VDD
ISS=175*10^-6
RD=65*10^3
Kn=3*10^-3
VTN=1
IDS=ISS/2
IDS1=IDS*10^6
disp(IDS1,"    IDS(uA) = ISS / 2 =")
VGS=VTN+sqrt(ISS/Kn)
disp(VGS,"    VGS(V) = VTH + sqrt(ISS/Kn) =")
format(5)
VDS=VDD-(IDS*RD)+VGS
disp(VDS,"    VDS(V) = VDD - (IDS*RD) + VGS =")
disp("Checking for saturation,")
format(6)
x=VGS-VTN
disp(x,"     VGS - VTN =")
disp("and VDS >= 0.2. Thus, both transistors in the differential amplifier are baised at Q-point of :")
disp(IDS1)
format(5)
disp(VDS)
disp("Requiring saturation of M1 for non zero VIC,")
disp("    VGD = VIC - (VDD - IDS*RD) <= VTN")
disp("    VIC <= VDD - ID*RD + VTN")
VIC = VDD - IDS*RD + VTN
disp(VIC,"    VIC(V) =")