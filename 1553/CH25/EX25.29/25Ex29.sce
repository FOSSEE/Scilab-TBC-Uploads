//Ch25_Ex29
clc;
clear;
close;
dw=4; rw=dw/2; //diameter and radius wire
ds=18; rs=ds/2;//diamerer and radius of sphere
volS=(4/3)*%pi*rs^3;
hw=volS/(%pi*rw^2);
mprintf("THe length of wire is %.0f m",hw);
