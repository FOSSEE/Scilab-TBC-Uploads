// Exa 6.1
format('v',6)
clc;
clear;
close;
// Given data
BWf = 5;// in MHz
BWf= BWf * 10^6;// in Hz
Av = 100;
BW = 500;// in kHz
BW = BW * 10^3;// in Hz
// BWf = (1+(B*Av))*BW;
B = ((BWf/BW)-1)/Av;
disp(B,"The amount of negative feed back is");
Avf = Av/(1+(Av*B));
disp(Avf,"The new gain after negative feed back is");
