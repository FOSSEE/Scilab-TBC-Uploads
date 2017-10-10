//Example 3.19
clear;
clc;

//Given
CpH2=28.83;//specific heat at constant pressure of hydrogen in J K^-1 mol^-1
CpO2=29.12;//specific heat at constant pressure of oyygen in J K^-1 mol^-1
CpH2O=33.56;//specific heat at constant pressure of water in J K^-1 mol^-1
delHdH2O=241750;//heat of dissociation of water at 291 K of water in J
delT=341-291;//change in temperature (K)

//To determine heat of dissociation of water at 341 K
Cp=CpH2+(CpO2/2)-CpH2O;//specific heat at constant pressure in J K^-1 mol^-1
delHd=delHdH2O+(Cp*delT);//heat of dissociation of water at 341 K in J mol^-1
mprintf('heat of dissociation of water at 341 K = %f J mol^-1',delHd);
//end