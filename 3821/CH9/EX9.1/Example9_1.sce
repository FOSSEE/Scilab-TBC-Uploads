///Chapter 9 Law Of Thermodynamics
///Example 9.1 Page No:165
/// Find Work interaction during the 4th processes 
///Input data
clc;
clear;
Qab=720;   //Heat transfer of 1st processes in KJ 
Qbc=-80;   //Heat transfer of 2nd processes in KJ
Qcd=40;    //Heat transfer of 3rd processes in KJ
Qda=-640;  //Heat transfer of 4th processes in KJ
Wab=-90;   //Work transfer of 1st processes in KJ
Wbc=-50;   //Work transfer of 2nd processes in KJ
Wcd=130;   //Work transfer of 3rd processes in KJ


///Calculation
///From the 1st law of thermodynamic for close system undergoing a cycle.

//Work interaction during the 4th processes 
Wda=((Qab+Qbc+Qcd+Qda)-(Wab+Wbc+Wcd)); 

///Output
printf('Work interaction during the 4th processes= %f KJ \n",Wda);
