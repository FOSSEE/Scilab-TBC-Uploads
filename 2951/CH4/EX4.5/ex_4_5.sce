clc;
clear;
fm=3; //Modulating Frequency in kHZ
Max_dev=15;// Maximum Deviatin in kHZ

B=Max_dev/fm;

J=8; // Bessel table,the highest J coefficient
BW=J*fm*10^(3);//Bandwidth in kHz

BW1=2*(fm+Max_dev)*10^(3);//  According to carson rule, BAndwidth

disp(BW,"Bandwidth required (in Hz)");
disp(BW1,"According to Carsons rule, Bandwidth(in Hz)");
