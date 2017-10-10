//Chapter 11 Ex 29

clc;
close;
clear;
retail=100; com=36; red=24/100;
SP=retail-com;
profit=(8.8/100);
CP=(SP/(1+profit));
ncom=12;
SPn=retail-ncom;
gain=SPn-CP;
gainper=(gain/CP)*100;
mprintf("The profit percent is %.2f percent",gainper);
