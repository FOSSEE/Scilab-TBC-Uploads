//clear//
//Caption:Determination of maximum length of multimode fiber link
//Example13.5
//page 477
clear;
clc;
close;
L_OM2 = 40; //length of OM2 fiber
L_OM3 = 100; //length of OM3 fiber
BW_OM2 = 500e06;//bandwidth of OM2 fiber
BW_OM3 = 2000e06; //bandwidth of OM3 fiber
Lmax = L_OM2*(BW_OM3/BW_OM2)+L_OM3;
disp(Lmax,'The maximum link length in meter is Lmax =')
//Result
//The maximum link length in meter is Lmax = 260.   
