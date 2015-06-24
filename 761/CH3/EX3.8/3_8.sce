clc;
// page no 328
// prob no 8.6
//2 kHz tone is present on channel 5 of group 3 of supergroup
//signal is lower sided so
fc_channel_5=92*10^3;
fg=fc_channel_5 - (2*10^3);// 2MHz baseband signal
// we know group 3 in the supergroup is moved to the range 408-456 kHz with a suppressed carrier frequency of 516kHz
f_s_carr=516*10^3;
fsg=f_s_carr - fg;
disp(fsg);