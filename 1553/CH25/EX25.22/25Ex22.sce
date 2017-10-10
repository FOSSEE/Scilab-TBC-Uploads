//Ch25_Ex22
clc;
clear;
close;
//since the heights are in in ratio 1:2 and perimeter in ratio 3:4; 
//let ratio of radii be ratioR
ratioR=(4/3); ratioH=1/2
ratioV=((1/3)*%pi*ratioH)/((1/3)*%pi*ratioR);
mprintf("The ratio of their volumes is %.2f",ratioV);
