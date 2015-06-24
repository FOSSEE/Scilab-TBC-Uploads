//clear//
clc
clear
exec("8.3data.sci");
deltaHRx0 = 2*H0NH3-3*H0H2-HN2;
deltaCp = 2*CpNH3-3*CpH2-CpN2;
deltaHRx = deltaHRx0+deltaCp*(T-TR);
disp("The heat of reaction on the basis on the moles of H2 reacted is =")
disp((1/3)*deltaHRx*4.184)
disp("J at 423 K")
