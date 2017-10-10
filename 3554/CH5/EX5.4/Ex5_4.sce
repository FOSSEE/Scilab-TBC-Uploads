// Exa 5.4

clc;
clear all;

// Given data

n=4; // Number of full digits
V1=12.98;//Reading 1 to be measured(V)
V2=0.6973;//Reading 2 to be measured(V)

// Solution

Reso=1/10^n; //Resolution
printf(' Resolution is %.4f \n ',Reso);
disp("There are 5 digit places in 4 and 1/2 digits display, therefore 12.98     would be displayed as 12.980");
disp("");
printf(' Resolution on 1V range = %.4f. Any reading upto the 4th decimal can be displayed \n ',1*Reso);
disp("Therefore. 12.98 would be displayed as 12.980 and 0.6973 will be displayed as 0.6973");
disp("");
printf(' Resolution on 10V range = %.3f. Therefore. 12.98 would be dislayed as 12.98 \n ',10*Reso);
disp("Therefore on a 10V range,the reading of 0.6973 would be displayed as o.697 instead of 0.6973");
