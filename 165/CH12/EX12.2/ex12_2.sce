//Example 12.2
clc;

f=20;                  //Frequency in Hz
time_base=5;           //one cycle of signal recorded in mm
period=invr(f);
chart_speed=time_base/period;

printf('\nChart speed of signal is %d mm/s\n',chart_speed)