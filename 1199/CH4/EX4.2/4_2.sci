// 4.2
clc;
L=50*10^-6;
C=1*10^-9;
fc=1/(2*%pi*(L*C)^0.5);
fs1=10000;
fu1=(fc+fs1)*10^-3;
printf("\nUpper side band frequency =%.2f kHz",fu1)
fl1=(fc-fs1)*10^-3;
printf("\nLower side band frequency =%.2f kHz",fl1)
