clc;
//page no 328
//prob no 8.6
// 2kHz tone is present on channel 5 of group 3 of a supergroup
// refer to example 8.5, calculated fc=92kHz
fc=92;//in kHz
// Here signal is lower sideband,the 2kHz baseband signal therefore will be
fg=fc-2;
//from fig 10.15,group 3 in the supergroup is moved to the range 408-456 kHz, with a suppressed carrier frequency of 516kHz.
fsc=516;// in kHz
//the modulation is lower sideband,so the supergroup o/p freq will be 90kHz lower than carrier freq
fsg=fsc-fg;
disp('kHz',fsg,'The tone appear in the supergroup output at frequency of');