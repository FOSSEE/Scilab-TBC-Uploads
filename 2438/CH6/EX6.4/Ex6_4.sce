//========================================================================
//chapter 6 example 4
clc;
clear;


//input data
 l     = 100;                      //length in cm
 d     = 0.008;                   //diameter of wire in cm
 R     = 95.5;                   //resistance in ohm
 A    = %pi*0.004*0.004;        //cross-sectional area


//formula
//R=p*l/A
//calculation
 p  = R*A/l;                    //;resistivity of wire in ohm-cm


//result
mprintf('resistivity=%3.2e ohm-m\n',p);

//==========================================================================
