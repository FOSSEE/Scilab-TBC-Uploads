//ques-22.13
//Calculating edge length of a unit cell
clc
M=60.2;//molar mass (in g/mol)
den=6.2;//density (in g/mL)
Na=6.02*10^23;//(in /mol)
z=4;//FCC
a=((z*M)/(den*Na))^(1/3);
printf("The edge length of the given unit cell is %.0f pm.",a*10^10);
