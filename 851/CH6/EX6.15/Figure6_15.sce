//clear//
//Caption:Frequency response of modified duobinary conversion filter
//Figure 6.15: Frequency Response of Modified duobinary conversion filter
//(a)Amplitude Response
//(b)Phase Response
//page 259
clear;
close;
clc;
rb =  input('Enter the bit rate=');
Tb =1/rb;  //Bit duration
f = -rb/2:1/100:rb/2;
Amplitude_Response = abs(2*sin(2*%pi*f.*Tb));
Phase_Response = -(2*%pi*f.*Tb);
subplot(2,1,1)
a=gca();
a.x_location ="origin";
a.y_location ="origin";
plot2d(f,Amplitude_Response,2)
poly1= a.children(1).children(1);  
poly1.thickness = 2;  // the tickness of a curve.
xlabel('Frequency f---->')
ylabel('|H(f)| ----->')
title('Amplitude Repsonse of Modified Duobinary Singaling')
xgrid(1)
subplot(2,1,2)
a=gca();
a.x_location ="origin";
a.y_location ="origin";
plot2d(f,Phase_Response,5)
poly1= a.children(1).children(1);  
poly1.thickness = 2;  // the tickness of a curve.
xlabel('                                           Frequency f---->')
ylabel('                                            <H(f) ----->')
title('Phase Repsonse of Modified Duobinary Singaling')
xgrid(1)
//Result
//Enter the bit rate=8 
