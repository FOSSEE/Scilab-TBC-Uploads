//======================================================================================
//chapter 6 example 5

clc;
clear;


//input data
 R0       =17.5;            //resistance at 0 degree c in ohm
 alpha    =0.00428;         //temperature coefficient of copper in per degree c
 t        =16;              //temperature in degree


//formula
 Rt     = R0*(1+(alpha*t));           //resistance at 16 degree  C
 P       = (R0/Rt)*100;                      //percentage conductivity at 16 degree C


//result
mprintf('percentage conductivity=%3.2f.percent\n',P);

//===========================================================================================
