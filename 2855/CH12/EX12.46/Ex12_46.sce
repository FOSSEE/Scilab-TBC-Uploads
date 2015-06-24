//chapter 12
//page no 540
//exa 12_46
//given
clear;
clc;
Tb=100;         //bit period in ps
dZ=0.4;         //in ps/nm/km
Zr=150;         //Modulator spacing in km
Ta=Tb/(dZ*Zr);      //channel spacing in nm
printf("\n Channel spacing %0.1f nm",Ta);   //result

