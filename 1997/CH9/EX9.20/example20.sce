//Chapter-9 example 20
//=============================================================================
clc;
clear;
//input data
no    = 377;//Free space intrinsic impedance in ohms
Zd1   = 73+50*%i;//dipole impedance;
Zd2   = 70;//dipole impedance;
Zd3   = 800;//dipole impedance;
Zd4   = 400//dipole impedance;
Zd5   = 50+10*%i;//dipole impedance;
Zd6   = 50-30*%i;//dipole impedance;
Zd7   = 350;//dipole impedance;

//Calculations
K      = (no^2)/4;
//Zs   = (no*no)/(4*Zd); slot impedance
Zs1    = K/Zd1//slot impedance
Zs2    = K/Zd2;//slot impedance
Zs3    = K/Zd3;//slot impedance
Zs4    = K/Zd4;//slot impedance
Zs5    = K/Zd5;//slot impedance
Zs6    = K/Zd6;//slot impedance
Zs7    = K/Zd7;//slot impedance

//output 

mprintf('slot impedance if Zd = 73+i50 ohm is '),mprintf( prettyprint(Zs1)),mprintf(' ohm \n');
mprintf(' slot impedance if Zd = 70     ohm is '),mprintf( prettyprint(Zs2)),mprintf(' ohm \n');;
mprintf(' slot impedance if Zd = 800    ohm is '),mprintf( prettyprint(Zs3)),mprintf(' ohm \n');;
mprintf(' slot impedance if Zd = 400    ohm is '),mprintf( prettyprint(Zs4)),mprintf(' ohm \n');;
mprintf(' slot impedance if Zd = 50+i10 ohm is '),mprintf( prettyprint(Zs5)),mprintf(' ohm \n');;
mprintf(' slot impedance if Zd = 50-i30 ohm is '),mprintf( prettyprint(Zs6)),mprintf(' ohm \n');;
mprintf(' slot impedance if Zd = 350    ohm is '),mprintf( prettyprint(Zs7)),mprintf(' ohm \n');;



//=============end of the program==============================================
