
//sum of logarithms -1.6173,-2.3415,-1.6493,-0.7374
clear; 
clc;
close;
x=.6173;y=.3415;z=.6493;a=0.7374;//mantissa's of all 4 logarithms
mantissa=x+y+z+a;
//2 which is carried forward from the addition of mantissa is +ve.
characteristic=-1-2-1-0+2;//characteristic part of all 4 logarithms
mprintf("sum=-%f",mantissa)



