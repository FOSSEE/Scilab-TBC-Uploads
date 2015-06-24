//=========================================================================
//chapter 7 example 13


clc;
clear;


//input data
 VGS        = 26;                //gate source voltage in V
 IG         = 1.6*10^-9;        //gate current in A


//calculation
 R          = VGS/IG;           //gate to current resistance in ohms


//result 
mprintf('resistance =%3.2e.ohms\n',R);

//=========================================================================
