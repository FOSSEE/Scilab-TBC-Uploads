//Example 10.2: 
clc;
clear;
close;
format('v',6)
//given data :
Vbb=20;// in V
C=100;//in micro-farad
R=100;//in kilo-ohms
Vp=10;// in V
eta=Vp/Vbb;// instrinsic stand off ratio 
T= ((C*10^-12*R*10^3 *log(1/(1-eta))))*10^7;//in micro-seconds
format('v',6)
disp(T,"time period of the saw  tooth waveform generated is ,(micro-seconds)=")
