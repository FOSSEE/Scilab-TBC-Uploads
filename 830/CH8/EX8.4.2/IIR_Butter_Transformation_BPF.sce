//Graphical//
//Example 8.4.2
//To Design an Digital IIR Butterworth Filter from Analog IIR Butterworth Filter
//and to plot its magnitude response
//TRANSFORMATION OF LPF TO BPF USING DIGITAL TRANSFORMATION
clear;
clc;
close;
omegaP = 0.2*%pi;
omegaL =  (2/5)*%pi;                 
omegaU =  (3/5)*%pi;       
z=poly(0,'z');
H_LPF = (0.245)*(1+(z^-1))/(1-0.509*(z^-1))
alpha = (cos((omegaU+omegaL)/2)/cos((omegaU-omegaL)/2));
k = (cos((omegaU - omegaL)/2)/sin((omegaU - omegaL)/2))*tan(omegaP/2);
NUM =-((z^2)-((2*alpha*k/(k+1))*z)+((k-1)/(k+1)));
DEN = (1-((2*alpha*k/(k+1))*z)+(((k-1)/(k+1))*(z^2)));
HZ_BPF=horner(H_LPF,NUM/DEN)
disp(HZ_BPF,'Digital BPF IIR Filter H(Z)= ')
HW  =frmag(HZ_BPF(2),HZ_BPF(3),512);
W = 0:%pi/511:%pi;
plot(W/%pi,HW)
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(1)
xtitle('Magnitude Response of BPF Filter','Digital Frequency--->','Magnitude');
//Result
//Digital BPF IIR Filter H(Z)=    
//                              2            3            4  
//    0.245 - 1.577D-17z - 0.245z + 1.577D-17z + 1.360D-17z   
//    -----------------------------------------------------   
//                            2            3            4     
//    - 0.509 + 1.299D-16z - z + 6.438D-17z + 5.551D-17z     
// 
// which is equivalent to
// H(z) =
// 
//                      2              
//    0.245 - 0 - 0.245z + 0 + 0   
//    ---------------------------   
//                   2               
//    - 0.509 + 0 - z + 0+ 0    
//    
//H(z) =
// 
//                 2              
//    0.245- 0.245z 
//    --------------   
//             2               
//    - 0.509-z       
//       
//H(z) =
// 
//                -2              
//    0.245- 0.245z 
//    --------------   
//           -2               
//     0.509+z       
//           
// 
