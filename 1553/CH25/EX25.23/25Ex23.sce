//Ch25_Ex23
clc;
clear;
close;
//since the radii are in in ratio 3:4 and heights in ratio 2:3; 
//let ratio of radii be ratioR
ratioR=(3/4); ratioH=2/3;
ratioV=(%pi*ratioH*ratioR^2)/((1/3)*%pi);
mprintf("The ratio of their volumes is %.2f",ratioV);

