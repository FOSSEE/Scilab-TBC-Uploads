
//To Determine the Annual output of copper
//Page 456
clc;
clear;
I=2000; //Current Passed
NW=52; //Number of weeks in a Year
T=100*3600; //Number of seconds per week
TC=NW*T*I; //Total Charge supplied all over the year.
ECu=31.8; //Equivalent Weight of Copper in grams
F=96500; //One Farad of Charge

// 1 F of charge gives 31.8 gms of copper

W=(TC/F)*ECu/(1000*1000); //Weight of copper in tonnes

printf('The Annual Output of Copper is %g Tonnes\n',W)
