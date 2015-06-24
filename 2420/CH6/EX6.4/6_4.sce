clc
clear
//Initialization of variables
m=1.24 //lb
HV=11300 //Btu/lb
//calculations
HR=m*HV
eff=3413/HR
//results
printf("Plant heat rate = %d Btu/kw hr",HR)
printf("\n Overall efficiency = %.1f percent",eff*100)
