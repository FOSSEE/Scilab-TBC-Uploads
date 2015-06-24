//computation of molar mass of a sample from freezing point depression

clear;
clc;

printf("\t Example 12.10\n");

deltaTf=1.05;//depression in freezing point, C
Kf=5.12;//molal freezing point depression constant
m=deltaTf/Kf;//molality of solution, molal
mbenzene=301/1000;//mass of benzene, kg
n=m*mbenzene;//moles of sapmle
msample=7.85;//mass of sample, g
molarmass=msample/n;//molar mass of sample, g/mol

printf("\t the molar mass of the sample is : %4.0f g/mol \n",molarmass);

//End
