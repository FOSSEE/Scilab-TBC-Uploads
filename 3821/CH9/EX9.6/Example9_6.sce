///Chapter 9 Law Of Thermodynamics
///Example 9.6 Page No:169
/// Find Heat transferred during the process
///Input data
clc;
clear;
U1=520;       //internal energy in KJ/Kg
U2=350;       //internal energy in KJ/Kg
W=-80;        //work done by the air in the cylinder KJ/kg

///Calculation
deltaU=U2-U1;
Q1=deltaU+W;   //Heat transferred during the process

///Output
printf('Heat transferred during the process= %f KJ \n',Q1);
