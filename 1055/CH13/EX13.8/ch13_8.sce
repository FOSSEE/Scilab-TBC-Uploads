//Determine the percent increase of busbar voltage 
clear
clc;
vx=3;// percent reactance of the series element
sinr=.6;
V=vx*sinr;
mprintf("Percent drop of volts=%.1f percent\n",V);
