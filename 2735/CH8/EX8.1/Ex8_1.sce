clc
clear
//Initialization of variables
P=500 //psia
T=700 //F
J=778
//calculations
dpds=1490 *144/J
//results
printf("dp by ds at constant volume = %d F/ft^3/lbm",dpds)
disp("The answer is a bit different due to rounding off error in textbook")
