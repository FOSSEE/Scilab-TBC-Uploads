//Ch25_Ex 15
clc;
clear;
close;
vol=1848; 
diameter=14; 
radius=diameter/2;
h= vol/(%pi*radius^2);
mprintf("The depth of tank is %.0f meter",h);
