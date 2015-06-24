//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.16\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.16  (page no. 202) 
// Solution

//It is necessary to ontain the saturation values corresponding to 300 F.This is done by reading Table A.1 in Appendix 3,which gives
pf=66.98; //psia //pressure
vf=0.017448; //ft^3/lbm //specific volume
hf=269.73; //Btu/lbm //enthaply
//Now,
p=1000; //psia //pressure
J=778; //Conversion factor //ft*lbf/Btu
//From eq.5.5,
h=hf+((p-pf)*vf*144)/J; //1ft^2=144 in^2 //The enthalpy of subcooled water //Btu/lbm
printf("The enthalpy of subcooled water is %f Btu/lbm\n",h);
//The difference between this value and the value found in problem 5.15,expressed as a percentage is
percentoferror=(h-271.46)/271.46;
printf("Percent of error is %f\n",percentoferror*100);
