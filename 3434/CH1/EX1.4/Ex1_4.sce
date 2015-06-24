// Given data:
clc
T11=320+273.0 // temp at source 1 in kelvin
Q1=10000.0 // heat transfer rate at source 1 in kJ/min
T12=65+273.0 // temp at source 2 in kelvin
Q2=120000.0 //  heat transfer rate at source 2 in kJ/min
T2=35+273.0 // temp of surrounding in kelvin

n1=1-(T2/T11) // efficiency by source 1
n2=1-(T2/T12) // efficiency by source 2

W1=Q1*n1 // work at source 1 in kJ/min
W2=Q2*n2 // work at source 2 in kJ/min

printf("The work done at W1 is = %0.2f kJ/min \n ",W1)
printf("The work done at W2 is = %0.2f kJ/min \n ",W2)
printf("The larger power is provided by source 2")
