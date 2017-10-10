clc;
clear;
iC=21 //collector current in mA
iE=21.4 //Emitter current in mA

//Calculation
alpha=iC/iE

mprintf("common-base current gain= %1.2f",alpha)
