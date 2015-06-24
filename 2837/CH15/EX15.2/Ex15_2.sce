clc
clear
//Initalization of variables
U=121200 //Btu/mol
Uco2=51635 //Btu/mol
Un2=27589 //Btu/mol
Uco22=57875 //Btu/mol
Un22=21036 //Btu/mol
T1=5000 //R
T2=5500 //R
//calculations
Ut1=Uco2+1.88*Un2
Ut2=Uco22 + 1.88*Un22
disp("By extrapolation,")
Tx=5710 //R
//results
printf("Max. Temperature reached = %d R",Tx)
disp("The calculation for Ut2 is wrong in textbook. Please use a calculator.")
