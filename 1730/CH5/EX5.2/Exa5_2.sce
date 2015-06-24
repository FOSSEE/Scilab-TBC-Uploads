//Exa 5.2
clc;
clear;
close;
format('v',11)
// given data
Area_hysteresis_loop=93;//in cm^2
scale1_1cm=0.1;//in Wb/m^2
scale2_1cm=50;//in AT/m

hysteresis_loss=Area_hysteresis_loop*scale1_1cm*scale2_1cm;//in J/m^3/cycle
disp(hysteresis_loss,"Hysteresis loss/m^3/cycle in J/m^3/cycle: ");

f=65;//unit less
V=1500*10^-6;// in m^3
P_h=hysteresis_loss*f*V;
disp("Hysteresis loss is : "+string(P_h)+" W");
