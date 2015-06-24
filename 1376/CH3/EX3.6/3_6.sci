//3.6
clc;
V=20;
A=20*10^-6;
Ra=25*10^3;
Rx=((V/A)-Ra)*10^-3;
printf("The resistance=%.0f Kohm",Rx)
E_voltmeter=(2/(100*20))*20*100;
E_current=(2/(100*20))*50*100;
E_total=E_voltmeter+E_current;
printf("\nMaximum possible error=%.1f percent",E_total)
