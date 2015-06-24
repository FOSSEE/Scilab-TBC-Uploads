clc;clear;
//Example 24.6
//calculation of power level

//given values
a=3.5;//attenuation in dB/km
Pi=.5*10^-3;//initial power level in W
l=4;//length of cable in km

//calculation
Po=Pi*10^6/(10^(a*l/10));
disp(Po,'power level after km(in microwatt) is');
