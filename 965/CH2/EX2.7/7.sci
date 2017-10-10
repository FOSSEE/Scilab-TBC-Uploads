clc;
clear all;
disp("Thickness of insulation")
delT=1150-40;// degree C 
kA=1.52 ;//W/(m*C)
kB=  0.138;//W/(m*C)
kC=45;// W/(m*C)
kD=  0.138;//W/(m*C)
q= 400;//W/m^2
// q = Q/A = delT/(La/kA+Lb/kB+Lc/kC+Ld/kD)
//400 = 1110/(0.2/1.52+x/0.138+0.006/45+0.1/0.138)
//0.8563+7.2*x = 1110/400=2.775
x=(2.775-0.8563)/7.2
disp ("mm",x*1000,"thickness of insulation brick is= ")
//q=400=(tSO-40)/(Ld/kD)
//400=(tSO-40)/(0.1/0.138)
tSO=400/1.38+40;// degree C
disp ("degree C",tSO,"temperature of outer surface of steel plate is = ")
