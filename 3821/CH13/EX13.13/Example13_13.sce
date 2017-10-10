////Chapter 13  Steam Engines
////Example 13.13 Page No 293
///Find Brake Power
//Input data
clc;
clear;
Db=900*10^-3;      //Diameter of break drum in mm
dr=50*10^-3;       //Diameter of rope in mm
W=105*9.81;         //dead weight on the tight side of the rope in Kg
S=7*9.81;           //Spring balance of the rope in N
N=240;              //Speed of the engine in rpm
pi=3.142;
//Calculation
T=(W-S)*((Db+dr)/2); //Torque Nm
Bp=2*pi*N*T/60000;  //Brake Power in Kw

//Output
printf('Torque= %f Nm \n',T);
printf('Brake Power= %f Kw \n',Bp);
