clc
clear
//Initialization of variables
short=2 //ft
apart=3 //ft
long=4 //ft
T1=2260 //R
T2=530 //R
sigma=0.1714
//calculations
A1=short*long
ratio=short/apart
disp("from curve 3")
F=0.165
Q12=A1*F*sigma*((T1/100)^4 -(T2/100)^4)
//results
printf("Net exchange of radiation = %d Btu/hr",Q12)
disp("The answer in the textbook is a bit different due to rounding off error in textbook.")
