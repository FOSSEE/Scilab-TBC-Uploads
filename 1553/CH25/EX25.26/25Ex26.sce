//Ch25_Ex26
clc;
clear;
close;
increasedR=50/100; 
newR=1+increasedR;
originalVol=(4/3)*%pi; //this formula excludes the term R since it is not given and it gets cancelled with denominator
newVol=(4/3)*%pi*newR^3;
originalArea=4*%pi;
newArea=4*%pi*newR^2;
percentIncVol=(newVol-originalVol)/originalVol;//percent increase in volume
percentIncSurArea=(newArea-originalArea)/originalArea;
mprintf("The increase in volume is %.1f percent and the increase in surface area is %.0f percent",percentIncVol*100,percentIncSurArea*100);
