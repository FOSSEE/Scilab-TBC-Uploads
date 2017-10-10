//Chapter 7, Example 7.9, page 324
clc

//Initialisation
h=24                                //hours
m=60                                //minutes
s=60                                //seconds


//Calculation
dm=0.004*h*m*(1250*2500**-1)          //Maximum degraded minutes
ses=0.00054*h*m*s*(1250*2500**-1)     //Severely errored seconds

//Results
printf("(1) Maximum degraded minutes per day = %.2f min",dm)
printf("\n(2) Severely errored seconds per day = %.2f s",ses)
