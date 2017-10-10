clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 13

clear; clc; close; 
//
// Given data
P1    =  1560.0000;
P2    =  2100.0000;
Vp    =   220.0000;
// Calculations The Total Real Power and Per Phase Real Power 
PT = P1 + P2;
PT_p = PT/3;
// Calcullation The Total Reactive Power 
QT = sqrt(3)*(P2 - P1);
QT_p = QT/3;
// Calculation Power Angle 
pf = cosd(atand(QT,PT))
// Calculation Phase Impedance 
Ip = PT_p/(Vp*pf);
Zp_mag = Vp/Ip;
Zp_angle = atand(QT,PT);
//
disp("Example 12-14 Solution : "); 
printf(" \n a. PT_p     =  Total Real Power Per Phase                 = %.3f Watt",PT_p)
printf(" \n b. QT_p     =  Total Reactive Power Per Phase             = %.3f Var",QT_p)
printf(" \n c. pf       =  Power Angle                                = %.3f (Lagging)",pf)
printf(" \n d. Zp_mag   =  Magnitude of Phase Impedance               = %.3f Ohm",Zp_mag)
printf(" \n e. Zp_angle =  Angle of Phase Impedance                   = %.3f degree",Zp_angle)

