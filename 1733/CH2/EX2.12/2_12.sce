//2.12
clc;
Vm=230*2^0.5;
Vrms=(800/1000*230^2)^0.5;
printf("Output Voltage = %.2f V", Vrms )
//Vrms=Vm*((%pi-alph)/(2*%pi)+sind(2*alph)/(4*%pi))^0.5 on solving
alph=61;
printf("\nFiring angle = %.0f degree", alph )
I=800/Vrms;
printf("\nLoad current = %.2f A", I )