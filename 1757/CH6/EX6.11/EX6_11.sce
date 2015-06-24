//Example6.11  // To design an instrumentation amplifier
clc;
clear;
close;
// 4 <= Av <= 1000 ;  gain
Ad = 2 ;
Res = 100 ;  // K ohm

// we cosider the variable resistance is R1 , the maximum and the minimum range of variable resistance 
// R1min = R1 ;             
// R1max = R1+100 ;

// the gain of difference amplifier 
//A3 = Ad = Vo/(Vo2-Vo1) = (R4/R3)

// the maximum range of differential voltage gain Avmax = 1000 when R1min = R1
//Avmax = R4/R3*(1+(2*R2/R1min));

// by solvin we get following equation
//  499*R1-2*R2=0                       equation 1

// the maximum range of differential voltage gain Avmin =4 when R1max = R1+100 K ohm
// Avmin = (R4/R3)*(1+(2R2/R1max));

// by solving above equation we get
// R1 -2 R2 = -200 K ohm                equation 2

//by solving equation 1 and 2 we get
R1 = 401 ; //  ohm
R2 = 100.2 ; // ohm
disp('The variable resistance R1 varies is  401 ohm <= R1 <= 100.2 K-ohm ') ;
