//Ex8_3 PG-8.6
clc
Amid=100;//mid-band gain
f1=1e3;//loer cut-off frequency
f=20;//frquency at which the gain of the amplifier should be found
A=Amid/sqrt(1+(f1/f)^2)
printf("\n Therefore  the gain of the amplifier at f = 20Hz is %.0f \n",A)
