//Example 14.1: energy and threshold electrical energy
clc;
clear;
close;
format('v',4)
disp("part (a)")
no=1.9*10^19;//cm^-3;//
hc=6.6*10^-34;//
v=5.45*10^14;//Hz
av=2;//
nv=1;//
n2=no/2;//
eng=((n2*hc*v)/(av*nv));// J cm^-2
disp(eng,"energy in J cm^-2 is")
format('v',5)
disp("part (b)")
oe=0.50;//
mr=0.15;//
lr=0.20;//
teng=eng/(oe*mr*lr);//
disp(teng,"threshold energy in J cm^-2 is")
//electrical energy is calculated wrong in the textbook
