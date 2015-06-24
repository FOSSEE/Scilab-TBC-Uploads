// Example 2.16, page no-49
clear
clc

A1=12000                 //first Apogee distance
P=8000                   // Perigee distance
v1=1                     // assume v1 as 1
v2=1.2*v1                //20% higher than v1 

x=(v2/v1)^2
k=(((1+(P/A1))/x)-1)
k=floor(k*10^4)/10^4
A2=P/k

printf("A2 = %.0fkm",ceil(A2))
