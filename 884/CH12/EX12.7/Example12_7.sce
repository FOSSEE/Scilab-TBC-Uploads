//computation of vapor pressure lowering

clear;
clc;

printf("\t Example 12.7\n");

H2O=18.02;//mol mass of H2O, g
V=460;//volume of water, mL
glucose=180.2;//mol. mass of glucose, g
mass=218;//mass of gllucose, g
n1=V/H2O;//moles of water
n2=mass/glucose;//moles of glucose
x1=n1/(n1+n2);//mole fraction of water
P=31.82;//vapor pressure of pure water, mmHg
P1=x1*P;//vapor pressure afteraddition of glucose, mmHg

printf("\t the vapor pressure lowering is : %4.1f mmHg\n",P-P1);

//End
