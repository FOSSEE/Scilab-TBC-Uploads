




//Chapter 2
//page no 59
//given
clc;
clear ;
Br_Si=1.79*10^-15;           //Recombination coefficient for Si
Br_Ge=5.25*10^-14;           //Recombination coefficient for Ge
Br_GeAs=7.21*10^-10;           //Recombination coefficient for GeAs
Br_InAs=8.5*10^-11;           //Recombination coefficient for InAs
P_N=2*10^20;        //per cubic cm
T_Ge=1/Br_Ge/P_N;//radiative minority carrier lifetime
printf("\n T_Ge is  %0.3f micro-s \n",T_Ge/10^-6);//result
T_Si=1/Br_Si/P_N;//radiative minority carrier lifetime
printf("\n T_Si is  %0.2f micro-s \n",T_Si/10^-6);//result
T_InAs=1/Br_InAs/P_N;//radiative minority carrier lifetime
printf("\n T_InAs is  %0.0f ps \n",T_InAs/10^-12);//result
T_GeAs=1/Br_GeAs/P_N;//radiative minority carrier lifetime
printf("\n T_GeAs is  %0.0f ps \n",T_GeAs/10^-12);//result

