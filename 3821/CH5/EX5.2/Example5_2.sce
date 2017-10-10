///Example 5.2 Page No:82
///Measured length of bar
//Input data
clc;
clear;
MSR=5.3;             //Main scale reading of prismatic bar in cm
NCD=6;               //Number of coinciding Vernier Scale division 
Lc=0.1*10^-3;       //Least count of the instrument in mm 
Ne=(-0.2*10^-3);    //Instrument bears a nagative error in mm

//Calulation
Mlb=MSR+(NCD*Lc);    //Measured length of the bar in cm
Tlb=(Mlb-(Ne));      //True length of the bar in cm


//Output
printf('Measured length of the bar= %f cm \n ',Mlb);
printf('True length of the bar= %f cm ",Tlb);
