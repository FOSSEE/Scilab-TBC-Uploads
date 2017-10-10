// Example 2_1
clc;funcprot(0);
//Given data
R=6.2;//Rainfall in  cm
A=2346;// Area in km^2

//Calculation
Tr=A*10^6*(R/100);// Total rainfall in m^2
V=(A*R*10^4)/86400;// Rainfall in day-sec-metre
R_k=(A*R*10^4)/10^6;// Rainfall in km^2-m
printf('\n Total rainfall=%0.4e m^3 \nVolume of rainfall=%0.0f day-sec-metre \nRainfall in km^2-m=%0.2f km^2-m',Tr,V,R_k);
// The answer provided in the textbook is wrong

