//Example 7.4.
clc
format(6)
VGS=-2
VP=-5
IDSS=8*10^-3
disp("The minimum value of VDS for pinch-off to occur for VGS = -2 V is")
VDSmin=VGS-VP
disp(VDSmin,"VDSmin(V) = VGS - VP = ")
IDS=IDSS*[1-(VGS/VP)]^2
IDS1=IDS*10^3
disp(IDS1,"IDS(mA) = IDSS * [1-(VGS/VP)]^2 = ")