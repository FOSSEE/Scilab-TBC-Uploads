//Exa 2.4
clc;
clear;
close;
//Given data
Beta=45;//unitless
RL=1;//in kOhm
deltaVCE=1;//in volt
disp("Part (i) : CE coniguration");
IC=deltaVCE/(RL*1000);//in Ampere
//Formula : Beta=deltaIC/deltaIB
IB=IC/Beta;//in Ampere
disp("Input Base Current, IB in mA : "+string(IB*10^3));
disp("Part (ii) : CB coniguration");
IC=deltaVCE/(RL*1000);//in Ampere
//Formula : Beta=deltaIC/deltaIB
IE=IB+IC;//in Ampere
disp("Input Emitter Current, IE in mA : "+string(IE*10^3));
