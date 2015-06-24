//Chapter 3
//page 82
//Example no 3-3
clc;
clear;
Zin_ol=300*10^3;       //in Ohms
Zout=100;       //in Ohms
Aol=50000;
Zout_ol=100;
Asp=100;
S=Aol/Asp;
printf("\n S = %.0f",S);//Result
Zin_sp=S*Zin_ol;
printf("\n Zin_sp = %.0f Ohm",Zin_sp);//Result
Zout_sp=Zout_ol/S;
printf("\n Zout_sp = %.1f Ohm",Zout_sp);//Result

