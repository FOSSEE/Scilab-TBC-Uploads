clc;clear;
//Example 24.7
//calculation of power loss

//given values
Pi=1*10^-3;//initial power level in W
l=.5;//length of cable in km
Po=.85*Pi

//calculation
a=(10/l)*log10(Pi/Po);
disp(a,'loss in dB/km is');
