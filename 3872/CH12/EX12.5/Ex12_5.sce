//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 12 ; Example 12.5
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

f=60;                    //Frequency of the system in Hertz
G1=2000;                 //Total generation of area 1 in MW
G2=4000;                 //Total generation of area 2 in MW
beta1=700;               //Area frequency response characteristic of area 1 in MW/Hz
beta2=1400;              //Area frequency response characteristic of area 2 in MW/Hz
delPD1=100;              //Load increment of area 1 in MW
delPD2=0;

//WITHOUT LFC
delF=(delPD1+delPD2)/(-(beta1+beta2));    //Frequency Change in Hertz
delPm1=-beta1*delF;                       //Change in power of area 1
delPm2=-beta2*delF;                       //Change in power of area 2
delPtie1=-delPm2                          //Tie line power flow from area 1 to 2
delPtie2=delPm2                          //Tie line power flow from area 2 to 1

disp('RESULTS WITHOUT LFC')
printf('\nThe steady state frequency error is %.4f Hz',delF)
printf('\nThe tie-line power flow from area 1 is %.4f MW',delPtie1)
printf('\nThe tie-line power flow from area 2 is %.4f MW\n',delPtie2)

//WITH LFC

delFl=0/(beta1+beta2);              //Frequency Change in Hertz (as ACE1+ACE2=0)
delPm1=-beta1*delFl;                //Change in power of area 1
delPm2=-beta2*delFl;                //Change in power of area 2
delPtie1=-delPm2                    //Tie line power flow from area 1 to 2
delPtie2=delPm2                     //Tie line power flow from area 2 to 1

disp('RESULTS WITH LFC')
printf('\nThe steady state frequency error is %.4f Hz',delFl)
printf('\nThe tie-line power flow from area 1 is %.4f MW',delPtie1)
printf('\nThe tie-line power flow from area 2 is %.4f MW',delPtie2)
