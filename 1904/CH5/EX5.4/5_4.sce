//To determine the percent voltage drops using nomnial operating voltage as base voltage
//Page 265
clc;
clear;

Sl=518; //Total Load on Lateral
Sm=5180; //Total Load on Main
Vll=12.47; //Line to Line voltage

//Currents in the respective current
Ilateral=Sl/(sqrt(3)*Vll);
Imain=Sm/(sqrt(3)*Vll);

C=5280; //Length Constant
Ll=5760/C; //Lateral Length
Lm=3300/C; //Main Length

//Constant for the cables
Km=0.0008;
Kl=0.00175;

//Voltage Drop Percents for 3 phase
VDlateral=Ll*Kl*Sl/2;

//Due to peculiarity of this new problem, one half of the main has to considered as express feeder and the other connected to a uniformly distributed load of 5180kVA
VDmain=Lm*Km*Sm*3/4;
TVD=VDmain+VDlateral;

//Since the inductive reactance of the line is
Cd=12; //Constant to find the distance in terms of feet

//Diameters of the Conductors
Dmi=37;
Dmn=53;

//Drops per mile
xdi=0.1213*log(Dmi/Cd);
xdn=0.1213*log(Dmn/Cd);

Dxd=xdn-xdi; //Difference in Drops

printf('\na) The percent voltage drops at :\n')
printf('Lateral End is %g percent\n',VDlateral)
printf('Main End is %g percent\n',VDmain)

printf('\nb) The Above Drops meet the required criterion of 4 percent voltage drop\n')
printf('\nc) The Difference in Voltage drop is %g ohm/mile, which is a smaller VD valuue that it really is.\n',Dxd)
