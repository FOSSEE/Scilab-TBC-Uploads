//To Compare the results the percent voltage drop ratio for different loading
//Page 204
clc;
clear;

//Voltage Drops in Percentage
VDlumped=5; 
VDuniform=2.5;
VDincreasing=3.333;

//Ratio of the percent voltage drops
Rlu=VDlumped/VDuniform;
Rli=VDlumped/VDincreasing;
Riu=VDincreasing/VDuniform;

printf('\na) Percent VDlumped = %g Percent VDuniform\n',Rlu)
printf('b) Percent VDlumped = %g Percent VDincreasing\n',Rli)
printf('c) Percent VDincreasing = %g Percent VDuniform\n',Riu)
