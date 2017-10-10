//ex3
//Calculating mass of eutectic formed and lead separated out
clc
//Part (i)
M=1000;//Mass of argentiferrous lead sample given (in kg)
p1=0.1;//Percentage of silver in lead
p2=2.6;//Percentage of silver in eutectic
m1=(p1/100)*M;//Mass of Ag in the lead sample (in kg)
m2=(m1/p2)*100;//Mass of eutectic (in kg)
printf("Mass of eutectic = %.2f kg.",m2);
//Part (ii)
m3=M-m2;//Mass of Pb separated (in kg)
printf("\n Mass of Pb separated = %.2f kg.",m3);
