//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 320
clear;
clc;

//Given

Ciss=5D-12;//FET input capacitance in farads
Crss=0.5D-12;//FET reverse transfer capacitance in farads
Coss=2D-12;//FET output capacitance in farads

//Solution

Cgd=Crss;//gate to drain capacitance in farads
Cgs=Ciss-Crss;//gate to source capacitance in farads
Cds=Coss-Crss;//drain to source capacitance in farads
printf("Cgd = %.1f pF\n ",Cgd*10^12);
printf("Cgs = %.1f pF\n ",Cgs*10^12);
printf("Cds = %.1f pF\n ",Cds*10^12);
