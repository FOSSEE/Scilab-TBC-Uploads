//Ex3_20 Pg-193
clc

disp("(a) At Id=10mA,")
V=25 //voltage in mV
Id=10 //current in mA
Rac=V/Id 
//AC resistance (value in textbook is wrong)
printf("\n AC resistance Rac=%.1f ohm",Rac)

Id=20 //current in mA
Rac=V/Id 
//AC resistance (value in textbook is wrong)
printf("\n AC resistance Rac=%.2f ohm",Rac)
