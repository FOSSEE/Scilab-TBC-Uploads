// Exa 12.5
clc;
clear;
close;
// Given data
n=12;
digital_input= '010101101101';// in binary
D= bin2dec(digital_input);// in decimal
step_size= 8;// in mV
step_size=step_size*10^-3;// in V
VoFS= step_size*(2^n-1);// in V
disp(VoFS,"The full scale output voltage in V is : ")
Per_resolution= step_size/VoFS*100;// in %
disp(Per_resolution,"Percentage resolution is :")
Vout= step_size*D;// in V
disp(Vout,"The output voltage in V is : ")
