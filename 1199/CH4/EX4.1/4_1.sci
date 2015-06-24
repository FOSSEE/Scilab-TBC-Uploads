// 4.1
clc;
fc=1000;
disp('In addition to carrier frequency of 1000kHz the other upeer and lower frequencies are')
fs1=0.3;
fu1=fc+fs1;
printf("\nUpper side band frequency for modulating frequency of 300 Hz =%.1f kHz",fu1)
fl1=fc-fs1;
printf("\nLower side band frequency for modulating frequency of 300 Hz =%.1f kHz",fl1)
fs2=0.8;
fu2=fc+fs2;
printf("\nUpper side band frequency for modulating frequency of 800 Hz =%.1f kHz",fu2)
fl2=fc-fs2;
printf("\nLower side band frequency for modulating frequency of 800 Hz =%.1f kHz",fl2)
fs3=2;
fu3=fc+fs3;
printf("\nUpper side band frequency for modulating frequency of 2kHz =%.1f kHz",fu3)
fl3=fc-fs3;
printf("\nLower side band frequency for modulating frequency of 2kHz =%.1f kHz",fl3)
