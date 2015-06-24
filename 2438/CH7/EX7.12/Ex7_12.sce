//=========================================================================
//chapter 7 example 12

clc;
clear;


//input data
 IDS        = 2*10^-3;               //current in mA
 IDSS       = 8*10^-3;                // current in mA
 Vp         = -4.5;             //pinch off voltage in V
 VGS1       = -1.902;           //pinch off voltage  when IDS =3*10^-3 A

//formula
//IDS   = IDSS*((1-(VGS/Vp))^2)
//calculation
 VGS        = Vp*(1-(sqrt(IDS/IDSS)));
 gm         = ((-2*IDSS)/Vp)*(1-(VGS1/Vp));


//result
 mprintf('transconductance =%3.2f.mS\n',gm/10^-3);

//==========================================================================
