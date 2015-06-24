//Exa 7.5
clc;
clear;
close;
//given data :
VP=-4;//in Volt
IDSS=10;//in mA
IDSS=IDSS*10^-3;//in Ampere
VGS=-2;//in Volt
ID=IDSS*(1-VGS/VP)^2;//in mA
disp(ID*1000,"Drain current in mA : ");
disp("The minimum value of VDS for pinch-OFF region is equal to VP. Thus the minimum value of VDS : ");
disp(VP,"VDS(min) in volt : ");