clc;
clear;
syms t pi;

Pha_dev=3; //Phase_Deviation constant in rad/V

// Phase Modulation Function 

Pha_function=Pha_dev*4*sin(2*pi*1.5*10^(3)*t); 
Mod_wave=8*cos(2*pi*10^(4)*t) +Pha_function

disp( Pha_function,"the Phase Modulation Function = ");

disp(Mod_wave ,"The Modulated Wave Function = ");
