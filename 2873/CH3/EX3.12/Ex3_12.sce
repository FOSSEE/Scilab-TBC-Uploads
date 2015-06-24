// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 12")
p=1.013*10^5;//atmospheric pressure in pa
deltav=0.4;//change in volume in m^3
disp("here let us assume that the pressure is always equal to atmospheric presure as ballon is flexible,inelastic and unstressed and no work is done for stretching ballon during its filling figure shows the boundary of system before and after filling ballon by firm line and dotted line respectively.")
disp("displacement work, W=(p.dv)cylinder+(p.dv)ballon")
disp("(p.dv)cylinder=0,as cylinder is rigid")
disp("so work done by system upon atmosphere(W)in KJ, W=(p*deltav)/1000")
W=(p*deltav)/1000
disp("and work done by atmosphere=-40.52 KJ")
