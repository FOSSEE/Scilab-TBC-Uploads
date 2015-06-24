// Example 1.8, page no-55
clear
clc
//(a)
hot1_mV=41.29
cold1_mV=2.022
op1=hot1_mV-cold1_mV

//(b)
hot2_mV=33.096
cold2_mV=2.585
op2=hot2_mV-cold2_mV

//(c)
hot3_mV=11.947
cold3_mV=0.299
op3=hot3_mV-cold3_mV

printf("(a)\nOutput Millivolt = %.3f",op1)
printf("\n(b)\nOutput Millivolt = %.3f",op2)
printf("\n(c)\nAs the wrongly formed thermocouples at J1 and J2 will always oppose\n the main millivolt output, the net output will be lower than normal value.\nOutput mV<%.3f",op3)
