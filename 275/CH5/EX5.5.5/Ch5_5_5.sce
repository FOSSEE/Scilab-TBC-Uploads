clc
disp("Example 5.5")
printf("\n")
disp("Calculate power gain of amplifier")
printf("Given\n")
//have equal input & load resistance
//input voltage
Vi=100*10^-3
//output voltage
Vo=3
//power gain of amplifier
Apdb=20*log10(Vo/Vi)
printf("power gain of amplifier \n%f\n",Apdb)
