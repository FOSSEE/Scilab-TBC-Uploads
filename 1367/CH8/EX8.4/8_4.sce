//Find Stress Ratio and range
//Ex:8.4
clc;
clear;
close;
a_m=70;//mean stress in Mpa
a_r=210;//stress amplitude in Mpa
a_max=((2*a_m)+a_r)/2;//maximum stress in MPa
disp(a_max,"Maximum Stress Level (in MPa) = ");
a_min=2*a_m-a_max;//Minimum stress in MPa
disp(a_min,"Minimum Stress Level (in MPa) = ");
s=a_min/a_max;//stress ratio
disp(s,"Stress Ratio = ");
sr=a_max-a_min;//stress range in MPa
disp(sr,"Stress Range (in MPa) = ");
