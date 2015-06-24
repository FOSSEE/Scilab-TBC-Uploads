clc
clear
//Initialization of variables
F=0.51
A1=8 //ft^2
sigma=0.1714
T1=2260 //R
T2=530 //R
//calculations
Q12=A1*F*sigma*((T1/100)^4 -(T2/100)^4)
//results
printf("Net exchange of radiation = %d Btu/hr",Q12)
disp("The answer in the textbook is a bit different due to rounding off error in textbook.")
