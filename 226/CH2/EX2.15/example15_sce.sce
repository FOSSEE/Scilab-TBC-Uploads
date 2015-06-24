//chapter 2
//example 2.15
//page 63
printf("\n")
printf("given")
Vz=7.5;Pd=400*10^-3;D=3.2*10^-3;
Izm=Pd/Vz
printf("current at 50C is %3.3fA\n",Izm)
disp("At 100C")
P2=Pd-((100-50)*D)
printf(" power at 100C is %3.3fW\n",P2)
Izm=P2/Vz;
printf(" current at 100C is %3.3fA\n",Izm)