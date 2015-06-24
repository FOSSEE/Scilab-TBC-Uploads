//Find the range of tolerance
clear;
clc;
//soltion
//given

//color coding
orange=3;
gold=5;
yellow=4;
violet=7;
//band pattern
band1=yellow;
band2=violet;
band3=orange;
band4=gold;
//resistor color coding
r=(band1*10+band2)*10^(band3);
tol=r*(band4/100)//tolerance
ulr=r+tol;//upper limit of resistance
llr=r-tol;//lower limit of resistance
printf('The Range of resistance is %.2f kΩ to %.2f kΩ',llr/1000,ulr/1000);
