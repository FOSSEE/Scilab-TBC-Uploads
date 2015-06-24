clc
disp("Example 4.52")
printf("\n")
disp("Determine the minimum & maximum values of VEB1 for a UJT")
printf("Given\n")
Vbb=15
//intrinsic ratios
nmin=0.68
nmax=0.82
V=0.7
//mini triggering voltage is
Vpmini=nmin*Vbb+Vd
//max triggering voltage is
Vpmax=nmax*Vbb+Vd
printf("minimum triggering voltage \n%f volt\n",Vpmini)
printf("maximum triggering voltage \n%f volt\n",Vpmax)
