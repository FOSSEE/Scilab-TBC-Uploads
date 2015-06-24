
clc
clear
//Initialization of variables
s1=218.8 //kJ/kmol K
s2=188.85 //kJ/kmol K
s3=237.8 //kJ/kmol K
s4=205.2 //kJ/kmol K
//calculations
ds=s1+s2-s3-0.5*s4
//results
printf("Entropy change  = %.2f kJ/kmol K",ds)
