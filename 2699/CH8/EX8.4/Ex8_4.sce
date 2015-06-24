//Ex8_4 PG-8.7
clc
G=200;//3dB gain
f2=20e3;//higher cut-off frequency
Amid=G*sqrt(2);//mid-band gain
f=100e3;//frquency at which the gain of the amplifier should be found
A=Amid/sqrt(1+(f/f2)^2)
printf("\n Therefore  the gain of the amplifier at f=100kHz is %.2f \n",A)
//in the  book the answer for the gain is 115.47 which is wrong 
//the corect answer is 55.47
