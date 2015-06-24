//Exa 4.7
clc;
clear;
close;
//given data :
VP=-4;//in Volt
VGS=-2;//in Volt
IDSS=10;//in mAmpere
IDSS=IDSS*10^-3;//in Ampere
//Formula : ID=IDSS*[1-VGS/VP]^2
ID=IDSS*[1-VGS/VP]^2;//in Ampere
disp(ID*1000,"Drain Current in mA : ");
disp("The minimum value of VDS for pinch-off region is equal to VP. Thus the minimum value of VDS : VDS(min) = "+string(VP)+" Volt");