//Example 7.10. refer fig.7.18.
clc
format(6)
VTN=-2
KN=0.1*10^-3
VDD=5
RS=5*10^3
VGS=0
disp("Assuming that the MOSFET is baised in the saturation region. Then the d.c. drain current is")
disp("     ID = KN*(VGS-VTN)^2 = KN*(-VTN)^2")
ID=KN*(-VTN)^2
ID1=ID*10^3
disp(ID1," ID(mA) =")
disp("The d.c. drain-to-source voltage is")
VDS=VDD-(ID*RS)
disp(VDS,"     VDS(V) = VDD - ID*RS =")
VDSsat=VGS-VTN
disp(VDSsat,"Then,  VDSsat(V) = VGS - VTN =")
disp("Since VDS > VDSsat, the MOSFET is biased in the saturation region")