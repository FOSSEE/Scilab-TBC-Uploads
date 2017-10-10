///Chapter 9 Law Of Thermodynamics
//Example 9.5 Page No:168
/// Find Change in interval energy
///Input data
clc;
clear;
W=-2000;      //Work input of panddle wheel in KJ
Q1=-6000;     //Heat transferred to the surrounding from tank

//Calculation
deltaU=Q1-W;   //Change in interval energy

///Output
printf('change in interval energy drop= %f  KJ \n',deltaU);
