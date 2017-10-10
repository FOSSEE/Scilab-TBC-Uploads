//Ch25_Ex27
clc;
clear;
close;
dl=1; rl=dl/2; //diameter and radius of lead ball
ds=12; rs=ds/2;//diamerer and radius of sphere
volS=(4/3)*%pi*rs^3;
volL=(4/3)*%pi*rl^3;
noBalls=volS/volL;
mprintf("THe number of lead balls are %d",noBalls);
