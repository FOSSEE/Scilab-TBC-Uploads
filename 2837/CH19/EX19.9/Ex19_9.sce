clc
clear
//Initalization of variables
chem=19000 //Btu/lb
m1=204.63 //Btu/lb
M=28.9
w=14580.3
//calculations
ma=(chem-w/M)/(w/M -m1)
//results
printf("Air fuel ratio = %.1f lb air/lb fuel",ma)
