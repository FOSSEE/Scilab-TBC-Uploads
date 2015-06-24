//Finding of Pressure of water
//Given
W=490500;
Fr=39240;
d=40;
//To Find
A=(%pi/4)*d^2;
Wu=W+Fr;
P1=Wu/A;
Wd=W-Fr;
P2=Wd/A;
disp("Pressure while moving up ="+string(P1)+" N/cm^2");
disp("Pressure while moving down ="+string(P2)+" N/cm^2");
