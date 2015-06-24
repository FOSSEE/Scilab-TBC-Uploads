//Example 7.6
//Compare the electrical and optical bandwidth for an optical fiber 
//commuication system and develop a relationship between the two

clear;
clc ;
close ;

//Given data
Re_dB=3;                   //dB - ELECTRICAL 3 dB POINTS
Ro_dB=3;                   //dB - OPTICAL 3 dB POINTS

//Electrical Bandwidth
Iout_by_Iin=sqrt(10^(-Re_dB/10));
printf("\n\n\t For Electrical Bandwidth, Iout/Iin = %0.3f .",Iout_by_Iin);

//Optical Bandwidth
Iout_by_Iin=10^(-Ro_dB/10);
printf("\n\n\t For Optical Bandwidth, Iout/Iin = %0.1f .",Iout_by_Iin);