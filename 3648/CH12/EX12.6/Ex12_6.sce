//Example 12_6
clc();
clear;
//To findout how much electricity is needed
Tc=278         //Units in K
Th=293       //Units in K
COP=Tc/(Th-Tc)          //Units in ratio
Qc=210000          //Units in J
W=Qc/COP                   //Units in J
printf("The amount of Electricity is required is Delta W=%d J",W)
