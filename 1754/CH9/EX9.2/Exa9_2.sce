//Exa 9.2
clc;
clear;
close;
//Given data :
VP=10;//in volt
R=100;//in Kohm
C=1000;//in pF
VBB=20;//in Volts
ETA=VP/VBB;//intrinsic stand off ratio
T=R*10^3*C*10^-12*log(1/(1-ETA));//in sec
disp(T*10^6,"Time period of sawtooth wave in miro seconds : ")