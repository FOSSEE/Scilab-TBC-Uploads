//===========================================================================
//chapter 5 example 14
clc;clear all;

//variable declaration
V      =   250;     //voltage in V
RA    = 100;            //resistance in  Ω
RB    = 400;            //resistance in  Ω
x     = 0.005;        //error in measuring voltage in 


//calculations
I     = V/(RA+RB);     //current flowing through resistance in A
VB    = I*RB;              //potential drop acreoss resitance in V
//Req   = RA+((r*RB)/(r+RB))
//Ieq    =V/Req  = V/ RA+((r*RB)/(r+RB))
//Ieq   = (V*(r+RB))/((RA*(r+RB))+(r*RB))
//V1 = Ieq*(r*RB)/(r+RB)
// V1  = (V*(r+RB))*(r*RB))/((r+RB)*((RA*(r+RB))+(r*RB)))
//V1   = (V*r*RB)/((r+RB)*((RA*(r+RB))+(r*RB)))
//V1   = (200*r)/(80+r)
V1   = VB*(1-x);     //voltage measured with 0.5% error
r     = (V1*80)/(200-V1);       //solving equations  we get minimum resistance in Ω

//result
mprintf("minimum resistance = %3.2f Ω",r);

