//example 6.11

clear;
clc;

//Given:
W=1000;//Total mass of a solution[gm]
x1=0.5;//mole fraction of Chloroform
x2=0.5;//mole fraction of Acetone
V1m=80.235;//Partial molar volume of chloroform[cm3/mol]
V2m=74.166;//Partial molar volume of Acetone[cm3/mol]
M1=119.59;//molecular weight of chloroform[gm/mol]
M2=58;//molecular weight of Acetone[gm/mol]

//To find the Volume of the solution
nT=W/(x1*M1+x2*M2);//Total no. of moles
V=nT*(x1*V1m+x2*V2m);//Total volume[cm3]
printf("The volume of the solution is %f cm3",V); 








