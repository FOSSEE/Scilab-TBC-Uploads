// Example 2.4, page no-117
clear
clc

//(a)
p_diff=500
pdiff=p_diff*13.546/10000
printf("(a)\np1-p2 = %.3f kg/cm^2",pdiff)

//(b)
p1=6770
p_atm=10300
abs_p1=p1+p_atm
printf("\n(b)If p2 is open to atmosphere:\nAbsolute Pressure P1 = %d mmWG abs.",abs_p1)

//(c)
P1=500
P1_gauge=P1-760
printf("\n(c)If p2 is evacuated and sealed:\np1= %d mmHg gauge Pressure",P1_gauge)
