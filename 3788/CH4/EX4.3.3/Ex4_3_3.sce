//Example 4.3.3
// Calculate Noise Temperature

clc
clear
T0 = 290                     //reference temp usually 290K
NF = 1.78                      //Noise Figure
Td = T0*(NF - 1)

//Result
printf("Value of noise temperature is %dK",Td)
