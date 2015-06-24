//Calculate current and power input
//Chapter 3
//Example 3.14
//page 217
clear;
clc; 
disp("Example 3.14")
N1=90;                //number of primary turns
N2=180;                //number of secondary turns
R1=0.067;              //primary resistance in ohms
R2=0.233;              //secondary resistance in ohms
printf("Primary winding resistance referred to secondary side=%fohms",(R1*(N2/N1)^2))
printf("\nsecondary winding resistance referred to primary side=%fohms",(R2*(N1/N2)^2))
printf("\nTotal resistance of the transformer refferred to primary side=%fohms",((R1*(N2/N1)^2)+(R2*(N2/N1)^2)))