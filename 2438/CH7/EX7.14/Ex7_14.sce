//=========================================================================
//chapter 7 example 14

clc;
clear;


//input data
 ID1          = 1;               //current in A
 ID2          = 2.1;                // current in A
 VGS1         = 3.0;             //pinch off voltage in V
 VGS2         = 3.5;             //pinch off voltage in V
 

//calculation
 dID         = ID2-ID1;
 dVGS        = VGS2-VGS1;
 gm          = (dID*10^-3)/dVGS;


//result
 mprintf('transconductance =%3.2e mho\n',gm);
 mprintf('Note:wrong answer in textbook');

//==========================================================================
