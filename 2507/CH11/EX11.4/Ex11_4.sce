clc
clear
printf("Example 11.4 | Page number 399 \n\n");
//Find Z for air at 5.65 MPa and 27°C
//Given data
pc = 3.77e6 //Pa //critical pressure
p = 5.65e6 //Pa
Tc = 132.5 //K //critical temperature
T = 300 //K

//Solution
pR = p/pc //reduced pressure
TR = T/Tc //reduced temperature
//from generalized compressibilty chart
Z =0.97
printf("From the generalized compressiblity chart, at reduced pressure of %.1f and reduced temperature of %.2f, Z = %.2f",pR,TR,Z)
