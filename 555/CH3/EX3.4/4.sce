// Implementation of example 3.4
// Basic and Applied Thermodynamics by P.K.Nag
// page 56

clc
clear

s=150 // (speed in rpm)
d=0.8 // (cylinder diameter in m)
st=1.2 // (stroke of piston in m)
ad=5.5d-4 // (area of indicator diagram in m^2)
ld=0.06 // (length of diagram in m)
sp=147 // (spring value in Mpa/m)

pm=(ad/ld)*sp;
// one engine cycle is completed in two strokes of piston or one revolution of crank shaft
a=(%pi/4)*d^2;
wd=(pm*a)*(st*s);
// since the engine is single-acting and it has 12 cylinders,each contributing an equal power,the rate of work transfer is
W=(wd*12)/60;
W=W*1000;
disp(pm)
disp(wd)
disp("Rate of work transfer =")
disp(W)
disp("kW")
