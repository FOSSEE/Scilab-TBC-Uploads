//chapter 10 Ex 16

clc;
clear;
close;
JtoW=40/100; JtoS=20/100; amtRemain=12000; amtRemainPercent=1-JtoW;
//let initial amount be x
amtJtoS=3*JtoS*amtRemainPercent;
bal=amtRemainPercent-amtJtoS;
amtBank=(1/2)*bal;
initialAmt=amtRemain/amtBank;
mprintf("Mr. Jones initially had Rs.%d with him",initialAmt);
