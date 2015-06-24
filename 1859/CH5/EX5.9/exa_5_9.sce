// Exa 5.9
clc;
clear;
close;
// Given data
R= 1/10^4;// resolution
disp(R,"Resolution of voltmeter is : ")
reading1= 16.58;
reading2= 0.7254;
disp("There are 5 digit places in 4½ display, so "+string(reading1)+" would be displayed as 16.580 V on a 10V range ")
disp(reading2,"Any reading up to 4th decimal can be displayed. Hence "+string(reading2)+" will be displayed as ")
R= 10*R;// resolution on 10 V range
format('v',6);
disp("Resolution of 10 V range is "+string(R)+" So")
disp(reading2,"0.7254 will be displayed as ")
