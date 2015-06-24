//Ex:2.7
clc;
clear;
close;
fc=220;// center frequency in Hz
f3db=190;// 3 db frequency in Hz
f3db1=240;// 3 db frequency in Hz
Bl=(fc-f3db)/fc;// lower band width
Bu=(f3db1-fc)/fc;// upper band width
R=f3db1/f3db;// max to min ratio
printf("The lower band width = %f %%", Bl*100);
printf("\n The upper band width = %f %%", Bu*100);
printf("\n The max to min ratio = %f to 1 ", R);
