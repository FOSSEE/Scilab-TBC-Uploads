clc
clear
//Initialization of variables
H=2696.5 //kJ/kg
hg=2706.7 //kJ/kg
hf=504.7 //kJ/kg
//calculations
x= (H-hf)/(hg-hf)
x2=1
//results
printf("In case 1, fraction of vapor = %.3f",x)
printf("\n In case 2, fraction of vapor = %.3f",x2)
