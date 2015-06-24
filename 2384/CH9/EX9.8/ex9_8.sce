// Exa 9.8
clc;
clear;
close;
format('v',6)
// Given data
Rating = 25;// in KVA
V1 = 2000;// in V
V2 = 200;// in V
Pi = 350;// in W
Pi = Pi * 10^-3;// in kW
Pcu = 400;// in W
Pcu = Pcu * 10^-3;// in kW
phi= acosd(1);// in °
output = Rating;
losses = Pi+Pcu;
Eta = (output/(output + losses))*100;// %Eta in %
disp(Eta,"The efficiency of full load power in % is");
// For half load
output = Rating/2;// in kW
h = 1;
Pcu = Pcu*((h/2)^2);// in kW
losses = Pi+Pcu;
// efficiency of half load power 
Eta = (output/(output+losses))*100;// in %
disp(Eta,"The efficiency of half load power in % is");
