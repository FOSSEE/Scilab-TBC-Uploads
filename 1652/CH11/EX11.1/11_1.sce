clc
//Initialization of variables
A=7.6546
B=1686.8
T=60+273.2
//calculations
logP=A-B/T
P=10^logP
//results
printf("Vapor Pressure = %d mm",P+1)
