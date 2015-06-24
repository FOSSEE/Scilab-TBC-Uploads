clc
clear
//Initalization of variables
disp("From table 5-4,")
no=7.5
n1=3
n2=6
Q=1360805 //Btu/mol
//calculations
Uo=337+no*85
Uf=n1*104+n2*118
del= Q-(Uo-Uf)
Uo2=1656+no*402
Uf2=n1*490+n2*570
Qv=Uo2-Uf2+del
//results
printf("Change in chemical energy during complete combustion = %d Btu/mol",del)
printf("\n Lower heating value at constant volume = %d Btu/mol",Qv)
