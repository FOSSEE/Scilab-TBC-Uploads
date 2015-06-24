clc
disp("Example 5.11")
printf("\n")
disp("Calculate overall voltage gain in db of cascaded 2 stage amplifier")
printf("Given\n")
//Voltage gain
Av1=10
Av2=20
//overall voltage gain 
Av=Av1*Av2
//in db
Avdb=20*log10(Av)
printf("Overall gain is \n%f dB\n",Avdb)
