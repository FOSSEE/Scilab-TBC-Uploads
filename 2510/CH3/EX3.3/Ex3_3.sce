//Variable Declaration:
Q1 = 32.2                   //Gravitational acceleration (ft/s^2) (part 1)
CF = 32.2                   //Conversion factor (lb.ft/lbf.s^2)
M = 100                     //Mass (lb)
SA = 3                      //Surface area (in^2)
FsIs = (1.0/12.0)**2        //Feet square in a inch square
Q2 = 14.7                   //Atmospheric pressure (psi) (part 2)
GP = 35                     //Gauge Pressure (psig)
 
//Caculations:
F = M*Q1/CF                 //Force (lbf)
P = F/SA/FsIs               //Pressure at the base (lbf/ft^2)
Pa = GP+Q2                  //Absolute pressure (psia)
 
//Results:
disp("1. Pressure at the base is:")
disp(P)
disp("lbf/ft^2")

disp("2. Absolute pressure is:")
disp(Pa)
disp("psia")
