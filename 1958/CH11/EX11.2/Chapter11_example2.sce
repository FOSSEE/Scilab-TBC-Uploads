clc
clear
//Input data
I=0.09//Ratio of observed intensity to the initial intensity

//Calculations
q=acosd(sqrt(I))//Angle between the plane of transmission of the analyser and that of the polarizer in degrees

//Output
printf('Angle between the plane of transmission of the analyser and that of the polarizer is %3.2f degrees',q)

