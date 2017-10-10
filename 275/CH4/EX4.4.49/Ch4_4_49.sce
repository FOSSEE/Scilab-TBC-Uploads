clc
disp("Example 4.49")
printf("\n")
disp("Determine the minimum &amp; maximum triggering voltage for a UJT")
printf("Given\n")
Vbb=20
//intrinsic ratios
nmin=0.6
nmax=0.8
Vd=0.7
//minimum triggering voltage is
Vpmini=nmin*Vbb+Vd
//maximum triggering voltage is
Vpmax=nmax*Vbb+Vd
printf("Minimum triggering Voltage \n%f volt\n",Vpmini)
printf("Maximum triggering Voltage \n%f volt\n",Vpmax)