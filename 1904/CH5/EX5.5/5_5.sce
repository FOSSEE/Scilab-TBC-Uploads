//To find the percent voltage drop at the ends of the most remote laterals
//Page 268
clc;
clear;

Vb=7200; //Base Voltage in V
pf=0.9; //Power Factor
Sm=10360; //Load on Main Feeder in kVA
Vll=12.47; //Line to Line voltage in kV
Imain=Sm/(sqrt(3)*Vll); //Current in Main Feeder

//Note Suffix l means lateral and m means main

Vph=7.2; //Phase Voltage in kV
Sl=2*518; //Load on Lateral Feeder in kVA
Ilateral=Sl/Vph; //Current in Laterals

//Length of the Feeder
//Length Constant
Cm=5280; //Main
Cl=1000; //Lateral
Ll=5760/Cl; //Lateral Length
Lm=3300/Cm; //Main Length

//Constants for the particular cables from the tables
rl=0.331;
xLl=0.0300;
rm=0.342;
xam=0.458;
xdm=0.1802;
xLm=xam+xdm;

//Voltage Drops for Normal Condition
VDmainn=(Imain/2)*((rm*pf)+(xLm*sind(acosd(pf))))*Lm/2;
VDlateraln=(Ilateral/2)*((rl*pf)+(xLl*sind(acosd(pf))))*Ll/2;

perVDmainn=VDmainn*100/Vb;
perVDlateraln=VDlateraln*100/Vb;

TVDn=perVDmainn+perVDlateraln;

//Voltage Drops for Worst Conditions
VDmainw=(Imain)*((rm*pf)+(xLm*sind(acosd(pf))))*Lm/2;
VDlateralw=(Ilateral)*((rl*pf)+(xLl*sind(acosd(pf))))*Ll;

perVDmainw=VDmainw*100/Vb;
perVDlateralw=VDlateralw*100/Vb;

TVDw=perVDmainw+perVDlateralw;

printf('\na)From Table A5, 300-kcmilACSR conductors, with 500A Ampacity is used for main\nand AWG #2 XLPE Al URD cable with 168A Ampacity\n')
printf('b) The Total Voltage Drop in Percent for Normal Operation is %g percent\n',TVDn)
printf('c) The Total Voltage Drop in Percent for Worst Condition is %g percent\n',TVDw)
printf('d) The Voltage drop is met for Normal operation and NOT for emergency operation\n')
