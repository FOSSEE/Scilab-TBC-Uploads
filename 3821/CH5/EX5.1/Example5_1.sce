//Example 5.1 Page No:81
//Find Diameter of the rod
//Input data
clc;
clear;
MSR=3.2;          //Main scale reading of cylindrical rod in cm
NCD=7;            //Number of coinciding Vernier Scale division 
Lc=0.1*10^-3;    //Least count of the instrument in mm

//Calculation
DOR=MSR+(NCD*Lc); //Diameter of the rod

//Output
printf('Diameter of the rod= %f cm \n',DOR);
