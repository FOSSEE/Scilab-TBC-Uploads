// Exa 6.23
clc;
clear;
close;
format('v',7)
// Given data
Avm = 1500;// midband gain
Avmf = 150;// midband gain with feedback
// Avmf = Avm/(1+(Beta*Avm));
BetaAvm = (Avm/Avmf)-1;// feedback factor
disp(BetaAvm,"The value of feed back factor is");
bandwidth = 4;// in MHz
BWf = (1+BetaAvm)*bandwidth;// in MHz
disp(BWf,"The band width with feedback in MHz is");
