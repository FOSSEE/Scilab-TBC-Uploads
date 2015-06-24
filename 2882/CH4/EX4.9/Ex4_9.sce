//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 141 and 142
clear;
clc;

//Given Data

hfe=120;//forward transfer current ratio of CE configuration
hoe=20D-6;//output conductance of CE configuration in siemens
hohfe=1D-6;//output conductance of Chfe configuration in siemens
IE=2D-3;//emitter current in amperes
VT=26D-3;//temperature equivalent voltage of pn junction

//Solution

disp("(a)");
re=VT/IE;//emitter diode resistance in ohms
hi=hfe*re/1000;//input impedance in kilo-ohms
ro=1/hoe/1000;//output impedance in kilo-ohms
printf("hi = %.2f kilo-ohms\nro = %d kilo-ohms\nValue of current source is %d*Ib",hi,ro,hfe);
//output circuit is given as Figure 4.24

disp("(b)");
hi=re;//input impedance in ohms
A=hfe/(hfe+1);//current gain alpha of Chfe circuit
A=round(A);//taking approximate value
ro=1/hohfe/10^6;//output impedance in mega-ohms
printf("hi = %d ohms\nro = %d mega-ohms\nValue of current source is %d*Ib",hi,ro,A);
//output circuit is given as Figure 4.25

//Error in decimal places due to approximations in textbook
