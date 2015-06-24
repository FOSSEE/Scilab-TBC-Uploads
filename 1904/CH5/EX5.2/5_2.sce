//To determine the percent voltage drops
//Page 259
clc;
clear;

Sl=518; //Total Load on Lateral
Sm=1036; //Total Load on Main
Vll=4.16; //Line to Line voltage

//Currents in the respective current
Ilateral=Sl/(sqrt(3)*Vll);
Imain=Sm/(sqrt(3)*Vll);

C=5280; //Length Constant
Ll=5760/C; //Lateral Length
Lm=3300/C; //Main Length

//Constant for the cables
Kl=0.015;
Km=0.01;

//Voltage Drop Percents for 3 phase
VDlateral3=Ll*Kl*Sl/2;
VDmain3=Lm*Km*Sm;
TVD3=VDmain3+VDlateral3;
//Voltage Drop Percents for 1 phase according to Morrisoncfor laterals
VDlateral1=VDlateral3*4;
VDmain1=VDmain3;
TVD1=VDlateral1+VDmain1;


//CASE B
//To meet the maximum primary voltage drop criterion of 4.00 percent
//Conductors with ampacities of 480A and 270A for Main and laterals

//Constants from the table
Klb=0.006;
Kmb=0.003;

//Voltage Drop Percents
VDlateralb=Ll*Klb*Sl/2;
VDmainb=Lm*Kmb*Sm;
TVDb=VDmainb+VDlateralb;

printf('\na) The percent voltage drops at :\n')
printf('i) 3Phase\n')
printf('Lateral End is %g percent\n',VDlateral3)
printf('Main End is %g percent\n',VDmain3)
printf('ii) 1Phase\n')
printf('Lateral End is %g percent\n',VDlateral1)
printf('Main End is %g percent\n',VDmain1)
printf('\nb) Conductors with Ampacities of 480A and 270A are used to find the Percent voltage drop of the Main and Lateral as %g percent and %g percent respectively\n',VDmainb,VDlateralb)
printf('The Above Drops meet the required criterion of 4 percent voltage drop\n')
