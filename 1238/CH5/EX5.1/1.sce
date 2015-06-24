//finding required time//
//example 1//
clc
//clears the command window//
clear
//clears//  
R=10*10^3;//external resistance//
C=0.1*10^-6;//timing capacitor//
T=1.1*R*C;//time for which output remains high in monostable multivibrator using IC 555 timer//
printf('required time=%f seconds',T);//result is displayed
