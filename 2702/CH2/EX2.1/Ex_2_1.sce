// Exa 2.1
clc;
clear;
close;
// Given data 
V_S= 0;// As source is connected to ground
V_G= 1.5;// in V
V_D= 0.5;// in V
Vt= 0.7;// in V
// Part(a) V_D= 0.5;// in V
V_D= 0.5;// in V
V_DS= V_D-V_S;// in V
V_GS= V_G-V_S;// in V
if V_GS < Vt then
    disp("At V_D = 0.5 , the device is in cut off region")
elseif V_DS<= (V_GS-Vt) then
    disp("At V_D = 0.5 , the device is in triode region");
else
    disp("At V_D = 0.5 , the device is in saturation region");
      
end

// Part(b) V_D= 0.9;// in V
V_D= 0.9;// in V
V_DS= V_D-V_S;// in V
V_GS= V_G-V_S;// in V
if V_GS < Vt then
    disp("At V_D = 0.9 , the device is in cut off region")
elseif V_DS<= (V_GS-Vt) then
    disp("At V_D = 0.9 , the device is in triode region");
else
    disp("At V_D = 0.9 , the device is in saturation region");
      
end

// Part(c) V_D= 3;// in V
V_D= 3;// in V
V_DS= V_D-V_S;// in V
V_GS= V_G-V_S;// in V
if V_GS < Vt then
    disp("At V_D = 3 , the device is in cut off region")
elseif V_DS<= (V_GS-Vt) then
    disp("At V_D = 3 , the device is in triode region");
else
    disp("At V_D = 3 , the device is in saturation region");
      
end


