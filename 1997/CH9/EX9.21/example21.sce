//Chapter-9 example 21
//=============================================================================
clc;
clear;
//input data

//dl1  = lamda/20;
//dl2  = lamda/30;
//dl3  = lamda/40;
 
//Calculations
//Rr  = 80*(pi*pi)*(dl/lamda)^2 Radiation Resistance in ohms
//Rr1 = 80*(pi*pi)*(dl1/lamda)^2 Radiation Resistance in ohms
//Rr1 = 80*(pi*pi)*((lamda/20)/lamda)^2 Radiation Resistance in ohms
Rr1   =80*(%pi*%pi)*(1/20)^2 ;
//Rr2 = 80*(pi*pi)*(dl2/lamda)^2 Radiation Resistance in ohms
//Rr2 = 80*(pi*pi)*((lamda/30)/lamda)^2 Radiation Resistance in ohms
Rr2   =80*(%pi*%pi)*(1/30)^2 ;
//Rr3 = 80*(pi*pi)*(dl3/lamda)^2 Radiation Resistance in ohms
//Rr3 = 80*(pi*pi)*((lamda/40)/lamda)^2 Radiation Resistance in ohms
Rr3   =80*(%pi*%pi)*(1/40)^2 ;


//Output
mprintf('If Hertzian dipole length is lamda/20 then Radiation Resistance = %3.3f ohm\n If Hertzian dipole length is lamda/30 then Radiation Resistance = %3.3f ohm\n If Hertzian dipole length is lamda/40 then Radiation Resistance = %3.3f ohm\n',Rr1,Rr2,Rr3) ;

//=============end of the program==============================================
