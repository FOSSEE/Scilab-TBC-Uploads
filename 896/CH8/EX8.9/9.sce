clc
//Example 8.9
//Calculate the temperatures at different pts in a duct with different mach numbers
//for mach number=0.5
ratio_T=0.9524//dimentionless
T1=293.15//K
T2=T1/ratio_T//K
printf("The temperature at the pt in the duct where mach number is 0.5 is %f K\n",T2);
//for mach number 2
ratio_t=0.5556//dimentionless
t2=293.15//K
t1=t2*ratio_t//K
printf("The temperature initially at the start of the nozzle is %f K",t1);