//Example 12.1
clc;

chart_speed=40;        //Given Chart speed in mm/s
time_base=5;           //one cycle of signal recorded in mm

period=time_base/chart_speed;
f=invr(period);
printf('\nFrequency of signal is %.2f cycles/s\n',f)