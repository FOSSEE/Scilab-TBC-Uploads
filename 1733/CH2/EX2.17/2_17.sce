//2.17
clc;
Vm=230*2^0.5;
alph=40;
Io=((2*Vm/%pi*cosd(alph))-50)/5;
printf("Average value of load current = %.2f A", Io)