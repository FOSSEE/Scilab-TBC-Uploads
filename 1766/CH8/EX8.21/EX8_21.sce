clc;funcprot(0);//Example 8.21
//Initilisation of Variables
Lw=0.015;....//Thickness of wood in m
Kw=0.2;....//Thermal conductivity of wood in W/mK
Lf=0.008;....//Thickness of foam in m
Kf=0.02;.....//Thermal conductivity of foam in W/mK
Lb=0.225;....//Thickness of brick in m
Kb=1;.....//Thermal conductivity of brick in W/mK
Ti=270;...//Temparature of air in room in K
hi=30;....//Convective heat transfer coefficient of room air W/mK
To=300;...//Temparature of outside air in K
ho=15;....//Convective heat transfer coefficient of outside air W/mK
A=100;....//Area of wall in m^2
//calculations
U=1/((1/hi)+(Lw/Kw)+(Lf/Kf)+(Lb/Kb)+(1/ho));....//Overall heat transfer coefficient in W/m^2
Q=U*A*(To-Ti);....//Heat gain in W
Uf2=1/((1/hi)+(Lw/Kw)+((Lf*2)/Kf)+(Lb/Kb)+(1/ho));....//Overall heat transfer coefficient if foam is doubled in W/m^2
Qf2=Uf2*A*(To-Ti);....//Heat gain if foam is doubled in W
Uw2=1/((1/hi)+((Lw*2)/Kw)+(Lf/Kf)+(Lb/Kb)+(1/ho));....//Overall heat transfer coefficient if wood is doubled in W/m^2
Qw2=Uw2*A*(To-Ti);....//Heat gain if wood is doubled in W
disp(Uf2,"Overall heat transfer coefficient if foam is doubled in W/m^2:")
disp(Qf2,"Heat gain if foam is doubled in W:")
disp(Uw2,"Overall heat transfer coefficient if wood is doubled in W/m^2:")
disp(Qw2,"Heat gain if wood is doubled in W:")
