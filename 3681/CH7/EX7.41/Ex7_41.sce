// Calculating the eddy current loss ratio and average loss ratio and critical depth for minimum loss
clc;
disp('Example 7.41, Page No. = 7.104')
// Given Data
Ws = 20;// Slot width (in mm)
b = 14;// Width of copper conductors (in mm)
h = 8;// Depth of copper conductors (in mm)
f = 50// Frequency (in Hz)
N = 5;// Number of layers
// Calculation of eddy loss factor for different layers
a = 100*(b/Ws)^(1/2);
ah = a*h*10^(-3);
ah4 = ah^(4);
Ke1 = 1;// 1st layer
Ke2 = 1+ah4*2*(2-1)/3;// 2nd layer
Ke3 = 1+ah4*3*(3-1)/3;// 3rd layer
Ke4 = 1+ah4*4*(4-1)/3;// 4th layer
Ke5 = 1+ah4*5*(5-1)/3;// 5th layer
disp(Ke1,'1st layer     Ke1 =');
disp(Ke2,'2nd layer     Ke2 =');
disp(Ke3,'3rd layer     Ke3 =');
disp(Ke4,'4th layer     Ke4 =');
disp(Ke5,'5th layer     Ke5 =');
// Calculation of average eddy current loss factor for all the five layers
Ke_av = 1+ah4*N*N/9;
disp(Ke_av,'Average eddy current loss factor for all the five layers =');
// Calculation of critical depth for minimum loss
hc = 1/(a*(3*N*N/9)^(1/4))*1000;// Critical depth (in mm)
disp(hc,'Critical depth (mm)=');
// Calculation of average eddy current loss factor for all the five layers for this critical depth
ahc = a*hc*10^(-3);
ahc4 = ahc^(4);
Ke_av = 1+ahc4*N*N/9;
disp(Ke_av,'Average eddy current loss factor for this critical depth=');
//in book answers are 1, 1.13, 1.4, 1.8, 2.33, 1.55, 7 mm and 1.33 respectively.  The answers vary due to round off error
