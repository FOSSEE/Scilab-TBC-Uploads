//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 12 ; Example 12.3
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

M=500;               //MVA rating of the generator
f=60;                //requency in Hertz
R=0.05;              //Regulation constant in pu
delF=0.01;           //Increase in frequency in Hertz

delFpu=delF/f;       //Frequency increase in pu
delPref=0;           //Since fixed reference power setting is assumed
delPmpu=delPref-(1/R)*delFpu    //Change in mechanical power in pu
delPm=delPmpu*M;                //Actual value of mechanical power in MW

printf('The turbine mechanical power output decreases by %.3f MW.',abs(delPm))
