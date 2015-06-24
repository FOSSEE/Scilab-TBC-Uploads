//To find voltge drop percents for a self supporting aerial messenger cable
//Page 263
clc;
clear;

//Terms taken from Example two
Il=72; 
Im=144; 
C=5280; //Length Constant
Ll=5760/C; //Lateral Length
Lm=3300/C; //Main Length

//From Tables
//Lateral
rl=4.13; //Resistance per mile
xLl=0.258; //Reactance per mile
//Main
rm=1.29; //Resistance per mile
xLm=0.211;//Reactance per mile
pf=0.9; //Power Factor

Vb=2400; //Base Voltage
//Voltage Drops
VDlateral=Il*((rl*pf)+(xLl*sind(acosd(pf))))*Ll/2; 
VDmain=Im*((rm*pf)+(xLm*sind(acosd(pf))))*Lm;

//Percent Voltage Drop
perVDlateral=VDlateral*100/Vb;
perVDmain=VDmain*100/Vb;

TVD=perVDlateral+perVDmain; //Total Percent Voltage drop

//Case B
//Conductors With Ampacities of 268A and 174A for Main and Laterals
//From Tables
//Lateral
rlb=1.03; //Resistance per mile
xLlb=0.207; //Reactance per mile
//Main
rmb=0.518; //Resistance per mile
xLmb=0.191;//Reactance per mile

Vb=2400; //Base Voltage
//Voltage Drops
VDlateralb=Il*((rlb*pf)+(xLlb*sind(acosd(pf))))*Ll/2; 
VDmainb=Im*((rmb*pf)+(xLmb*sind(acosd(pf))))*Lm;

//Percent Voltage Drop
perVDlateralb=VDlateralb*100/Vb;
perVDmainb=VDmainb*100/Vb;

TVDb=perVDlateralb+perVDmainb; //Total Percent Voltage drop

printf('\na) The percent voltage drops at :\n')
printf('Lateral End is %g percent\n',perVDlateral)
printf('Main End is %g percent\n',perVDmain)

printf('\nb) Conductors with Ampacities of 278A and 174A are used to find the Percent voltage drop of the Main and Lateral as %g percent and %g percent respectively\n',perVDmainb,perVDlateralb)
printf('The Above Drops meet the required criterion of 4 percent voltage drop\n')
