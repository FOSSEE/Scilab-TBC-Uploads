clc
//initialisation of variables
clear
Ta= 441 //C
Tb= 882 //C
Tb1= 1218 //C
//CALCULATIONS
Ta1= (273+Tb1)*(Tb+273)/(273+Ta)
Tb= Ta1-273
//RESULTS
printf ('Normal boiling point of silver = %.f K',Ta1)
printf ('\n Normal boiling point of silver in degrees = %.f degrees',Tb)
