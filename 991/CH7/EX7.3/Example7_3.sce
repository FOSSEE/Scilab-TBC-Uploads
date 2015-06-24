//Example 7.3
clc
format(5)
VGSoff=-6
IDSS=8
ID=4
disp("ID = IDSS*[1 - (VGS/VGS_off)]^2")
VGS=(1-sqrt(ID/IDSS))*VGSoff
disp(VGS,"Therefore,    VGS(V) = ")
VP=abs(VGSoff)
disp(VP,"VP(V) = |VGS_off| = ")