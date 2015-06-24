clc
clear

//Input data
a1=2.2 //Area ratio (A/At)
Po=10 //Stagnation Pressure in bar

//Calculation
//Two values of mach number at a1 from gas tables

M1=0.275 //Mach number from gas tables
p1=0.949 //Presure ratio (P/Po)
P1=Po*p1 //back pressure in bar

M2=2.295 //Mach number from gas tables
p2=0.0806 //Presure ratio (P/Po)
P2=Po*p2 //back pressure in bar

//Output
printf('(A)When M=%3.3f, back pressure is %3.2f bar\n (B)When M=%3.3f, back pressure is %3.3f bar',M1,P1,M2,P2)
