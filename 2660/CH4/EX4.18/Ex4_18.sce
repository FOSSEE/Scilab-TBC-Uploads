clc
D = 63.5 // diameter of plain milling cutter in mm
w = 30 // width of block in mm
l = 180 // length of block in mm
f = 0.125 // feed in mm/tooth
n = 6 // no. of teeth
N = 1500 // spindle speed in r.p.m
tot = (D - sqrt(D^2 - w^2))/2 // total over travel in mm
tct = l + tot // total cutter travel in mm
Tm = tct/(f*n*N) // cutting time in min
printf(" Cutting time = %0.3f min." , Tm)
// Answers vary due to round off error
