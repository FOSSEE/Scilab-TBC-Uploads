//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 299 and 300
clear;
clc;

//Given

Gv=-48;//voltage gain of amplifier
Cbc=2D-12;//base to collector capacitance in farads
Cbe=0.5D-12;//base to emitter capacitance in farads

//Solution

Cin_miller=Cbc*(1-Gv);//input miller capacitance in farads
Cout_miller=Cbc*(1-1/Gv);//output miller capacitance in farads
disp("(i)");
printf("Input Miller capacitance Cin(Miller) = %.f pF",Cin_miller*10^12);
disp("(ii)");
printf("Output Miller capacitance Cout(Miller) = %.f pF",Cout_miller*10^12);


