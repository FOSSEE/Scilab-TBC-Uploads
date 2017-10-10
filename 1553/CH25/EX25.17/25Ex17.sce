//Ch25_Ex17
clc;
clear;
close;
vol=0.88;
l=7; //length
d=2/100; //diameter converting into centimeter
r=d/2;
volRod=%pi*r^2*l;
noRods=vol/volRod; //number of rods
mprintf("The number of rods made are %.0f",noRods);
