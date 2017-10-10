//example 3.14//
clc
//clears the screen//
clear
//clears all existing variables//
moh=10^-3;
//maximum output HIGH state current//
mol=20*10^-3;
//maximum output LOW state current//
mih=50*10^-6;
//maximum input HIGH state current//
mil=2*10^-3;
//maximum input LOW state current//
h=mol/mil;
disp(h,'the LOW state fan out =')