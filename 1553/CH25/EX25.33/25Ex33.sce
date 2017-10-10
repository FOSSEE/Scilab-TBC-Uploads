//Ch25_Ex33
clc;
clear;
close;
r1=9; d2=3; r2=d2/2; h=4;
volBowl=(2/3)*%pi*r1^3;
vol1bottle=(%pi)*r2^2*h;
noBottles=volBowl/vol1bottle;
mprintf("The number of bottles required are %.0f",noBottles);
