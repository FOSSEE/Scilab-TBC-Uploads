//Find the range of tolerance
clear;
clc;
//soltion
//given

//color coding
blue=6;
gold=-1;
gray=8;
silver=10;
//band pattern
band1=gray;
band2=blue;
band3=gold;
band4=silver;
//resistor color coding
r=(band1*10+band2)*10^(band3);
tol=r*(band4/100)//tolerance
ulr=r+tol;//upper limit of resistance
llr=r-tol;//lower limit of resistance
printf('The Range of resistance is %.2f Ω to %.2f Ω',llr,ulr);
