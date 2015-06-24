//Chapter-11 example 23
//=============================================================================
clc;
clear;
//input data
Az = 60;//azimuth angle of the target in degrees
Height = 10;//height of target in kms
//Calculations
R = 10/sin(Az*%pi/180);

//output
mprintf('Range of the Target is %g Kms',R);

//==========end of the program=================================================
