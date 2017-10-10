//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_11.sce

clc;
clear;
R1=30;    //Resistance in ohm
R2=60;    //Resistance in ohm
R3=60;    //Resistance in ohm
R4=30;    //Resistance in ohm
R5=10;    //Resistance in ohm
R=50;    //Resistance in ohm
I1=5/110;           //Loop1 current in Ampere 
I2=5/110;          //Loop2 current in Ampere
Voc=(I2*R2)-(I1*R1);       //Open circuit voltage in Volt
Isc=1/30;                  //Open circuit current in Ampere
Rs=Voc/Isc;               //Series resistance in ohm
I=Voc/(Rs+R);
printf("\n  Current through the 50 ohm resistor=%1.3f A \n",I)
