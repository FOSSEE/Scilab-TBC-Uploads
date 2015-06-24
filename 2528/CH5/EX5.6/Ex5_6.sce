//clear//
//Example5.6:design a circuit with upper break frequency
//Page 142
clear;
clc;
Av1=26;     //in dB
Av=20;      //ordinary gain
f2=500*10^3;    //in Hz

funity=f2*Av;    //(Anoise=Av for non inverting terminal)
disp("Hz",funity,"funity")
//411 has funity =4MHZ ,therefore atleast 2 stages would be required
//Stage 1
f411=4*10^6;            //in hz
Av1=f411/f2;
 disp(Av1,"Av");
//To achive gain of 20 second stage should have gain of atleast Av2=2.5
Av2=2.5;
f2=f411/Av2;
disp("Hz",f2,"f2");
