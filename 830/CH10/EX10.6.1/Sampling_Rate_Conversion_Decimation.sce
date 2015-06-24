//Graphical//
//Example 10.6.1
//Multistage Implementation of Sampling Rate Conversion
//Decimation factor D = 50
//D = D1xD2, D1 = 25, D2 =2
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
M = ((-10*log10(Delta1*Delta2)-13)/(14.6*Delta_F))+1;
M = ceil(M)
//Decimator Multistage Implementation
//First Stage Implementation
F1 = Fs/D1;  //New passband for stage1
Fsc1 = F1-Fsc;  //New Stopband for stage1
Delta_F1 = (Fsc1-Fpc)/Fs  //New Transition for stage1
Delta11 = Delta1/2;  //New Passband Ripple
Delta21  = Delta2;  //Stopband Ripple same
M1 = ((-10*log10(Delta11*Delta21)-13)/(14.6*Delta_F1))+1
M1 = floor(M1)
//Second Stage Implementation
F2 = F1/D2;  //New passband for stage2
Fsc2 = F2-Fsc;  //New Stopband for stage2
Delta_F2 = (Fsc2-Fpc)/F1  //New Transition for stage2
Delta12 = Delta1/2;  //New Passband Ripple
Delta22  = Delta2;  //Stopband Ripple same
M2 = ((-10*log10(Delta12*Delta22)-13)/(14.6*Delta_F2))+1
M2 = floor(M2)
disp('The Filter length Required in Single stage Implementation of Decimator is:')
M
disp('The Filter length Required in Multistage Implementation of Decimator is:')
M1+M2
//Calculation of Reduction Factor 
R = M/(M1+M2);
disp('The Reduction in Filter Length is:')
R
