//Graphical//
//Example 10.9.1
//Multistage Implementation of Sampling Rate Conversion
//Decimation factor D = 100
//D = D1xD2, D1 = 50, D2 =2
//Interpolation factor I = 100
//I = I1xI2, I1 = 2, I2 =50
clear;
clc;
close;
Fs = 8000;  //Sampling Frequency = 8000Hz
Fpc = 75;  //Passband Frequency
Fsc = 80;  //Stopband Frequency
Delta_F = (Fsc-Fpc)/Fs;  //Transition Band
Pass_Band = [0,Fpc];
Transition_Band = [Fpc,Fsc];
Delta1  = (10^-2);  //Passband Ripple
Delta2 = (10^-4);  //Stopband Ripple
D = Fs/(2*Fsc);    //Decimation Factor
//Decimator Implemented in Two Stages
D1 = D/2;  //Decimator 1
D2 = 2;  //Decimator 2
//Decimator Single Stage Implementation          
M = ((-10*log10(Delta1*Delta2/2)-13)/(14.6*Delta_F))+1;
M = ceil(M)
//Decimator Multistage Implementation
//First Stage Implementation
Delta_F1 = 0.020625 //Obtained from Example 10.6.1
M1 = ((-10*log10(Delta1*Delta2/4)-13)/(14.6*Delta_F1))+1
M1 = floor(M1)
//Second Stage Implementation
Delta_F2 = 0.015625  //Obtained from Example 10.6.1
M2 = ((-10*log10(Delta1*Delta2/4)-13)/(14.6*Delta_F2))+1
M2 = floor(M2)
disp('The Filter length Required in Single stage Implementation of Decimator is:')
M
disp('The Filter length Required in Multistage Implementation of Decimator is:')
M1+M2
//Calculation of Reduction Factor 
R = M/(M1+M2);
disp('The Reduction in Filter Length is:')
R
