///Chapter 9 Law Of Thermodynamics
///Example 9.4 Page No:168
/// Find Work done and compression process of heat
///Input data
clc;
clear;
Q1=-2100;         //Non flow process losses heat in KJ
deltaU=420;      //Gain heat

///Calculation
W=Q1-deltaU;      //Work done and compression process in KJ

///Output
printf('Work done and compression process= %f KJ \n',W);
