//=========================================================================
//chapter 7 example 10

clc;
clear;


//input data
 IDSS       = 10;               //current in mA
 IDS        =2.;                // current in mA
 Vp         = -4.0;             //pinch off voltage in V

//formula
//IDS   = IDSS*((1-(VGS/Vp))^2)
//calculation
 VGS        = Vp*(1-(sqrt(IDS/IDSS)));
 gm         = ((-2*IDSS)/Vp)*(1-(VGS/Vp));


//result
 mprintf('transconductance =%3.2f.m*A/V\n',gm);

//==========================================================================
