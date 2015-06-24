//Graphical//
//Example 8.3.5 Sigle pole analog filter
//Bilinear Transformation
//To convert analog filter into digital filter
clear;
clc;
close;
s = poly(0,'s');
Omegac = 0.2*%pi;
H = Omegac/(s+Omegac);
T =1;//Sampling period T = 1 Second
z = poly(0,'z');
Hz = horner(H,(2/T)*((z-1)/(z+1)))
disp(Hz,'Hz =')
HW  =frmag(Hz(2),Hz(3),512);
W = 0:%pi/511:%pi;
plot(W/%pi,HW)
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(1)
xtitle('Magnitude Response of Single pole LPF Filter Cutoff frequency = 0.2*pi','Digital Frequency--->','Magnitude');
//Result
//Hz =   
// 
//    0.6283185 + 0.6283185z   
//    ----------------------   
//  - 1.3716815 + 2.6283185z   
// 
//-->Hz(3)=Hz(3)/2.6283185
// Hz  =
// 
//    0.6283185 + 0.6283185z   
//    ----------------------   
//      - 0.5218856 + z        
// 
//-->Hz(2)=Hz(2)/2.6283185
// Hz  =
// 
//    0.2390572 + 0.2390572z   
//    ----------------------   
//      - 0.5218856 + z        
//      
//      which is equivalent to
//Hz =
//
//   0.2390572(1 + z^-1)   
//    ----------------------   
//     1 - 0.5218856*z^-1       
