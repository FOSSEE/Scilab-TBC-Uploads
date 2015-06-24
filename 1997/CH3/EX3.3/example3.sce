//Chapter-3, Problem 3.3 , Page105
//===========================================================================
clc;
clear;

//INPUT DATA
PRF= 1000;//pulse repetitive frequency in Hz
F  = 10*10^9;//operating frequency of radar in Hz;
Vo = 3*10^8;//velocity in m/s

//Calculations
 lamda = Vo/F;
 // Blind Frequency is given by Fn = n*PRF;
 n1 = 1;
 n2 = 2;
 n3 = 3;
 F1 =n1*PRF;//blind frequency for n=1 in Hz; 
 F2 =n2*PRF;//blind frequency for n=2 in Hz; 
 F3 =n3*PRF;//blind frequency for n=3 in Hz; 

//Output
mprintf('Lowest three Blind Frequencies are %g KHz ,%g KHz and %g KHz\n',F1/1000,F2/1000,F3/1000 );
