clc
clear
//Initalization of variables
disp("From table 14-2,")
G1=55750 //Btu/mol
co2=-169580 //Btu/mol
h2o=-98290 //Btu/mol
//calculations
G2=6*co2+3*h2o
avail=G1-G2
//results
printf("Max. amount of work = %d Btu/mol",avail)
