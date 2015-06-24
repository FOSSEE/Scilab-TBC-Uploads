clc;
clear;
U=10;//ft/sec
Twater=60;//degree F
Tglycerin=68;//degree F
kviswater=1.21*(10^-5);//(ft^2)/sec
kvisair=1.57*(10^-4);//(ft^2)/sec
kvisglycerin=1.28*(10^-2);//(ft^2)/sec
Re=5*(10^5);//assumption
xcrwater=kviswater*Re/U;//ft
xcrair=kvisair*Re/U;//ft
xcrglycerin=kvisglycerin*Re/U;//ft
btwater=5*(kviswater*xcrwater/U)^0.5;//ft; where bt=thickness of boundary layer
btair=5*(kvisair*xcrair/U)^0.5;//ft
btglycerin=5*(kvisglycerin*xcrglycerin/U)^0.5;//ft
disp("a)WATER")
disp(,"ft",xcrwater,"location at which boundary layer becomes turbulent=")
disp("ft",btwater,"Thickness of the boundary layer=")
disp("b)AIR")
disp(,"ft",xcrair,"location at which boundary layer becomes turbulent=")
disp("ft",btair,"Thickness of the boundary layer=")
disp("c)GLYCERIN")
disp(,"ft",xcrglycerin,"location at which boundary layer becomes turbulent=")
disp("ft",btglycerin,"Thickness of the boundary layer=")