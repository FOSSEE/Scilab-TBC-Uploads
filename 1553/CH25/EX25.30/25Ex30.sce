//Ch25_Ex30
clc;
clear;
close;
h1=4.1; h2=4.3; r=2.1
volS=(1/3)*%pi*r^2*(h1+h2);
R=nthroot(volS/((4/3)*%pi),3);
mprintf("The diameter of sphere is %.1f cm",R*2);
