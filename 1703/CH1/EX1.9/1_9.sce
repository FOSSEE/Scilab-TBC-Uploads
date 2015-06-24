
clc
//initialisation of variables
clear
Hb= 20 //in
Ha= 1 //in
a= 20 //degrees
//CALCULATIONS
hb= Hb*sind(a)
dh= hb+Ha
dP= dh/(12*2.309)
//RESULTS
printf ('Pressure difference between tapping points = %.3f lb/in^2 ',dP)
