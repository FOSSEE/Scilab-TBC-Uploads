clc
disp("Example 5.10")
printf("\n")
disp("Calculate overall voltage gain in db & output voltage when input voltage is 1uV for cascaded amplifier")
printf("Given\n")
//Voltage gain of amplifier
Av1=10
Av2=100
Av3=1000
//input voltage
Vi=10^-6
//overall voltage gain
Av=Av1*Av2*Av3
//in db
Avdb=20*log10(Av)
//output voltage when input voltage is 10^-6V
Vo=Av*Vi
printf("overall voltage gain in dB \n%f dB\n",Avdb)
printf("output voltage \n%f volt\n",Vo)
