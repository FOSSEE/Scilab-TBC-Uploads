////Ex 10.2
clc;
clear;
close;
format('v',9);
Vsat=7;//V
R1=68;//kohm
R2=82;//kohm
VUTP=R2*Vsat/(R1+R2);//V
VLTP=R2*-Vsat/(R1+R2);//V
disp(VUTP,"Upper trip point(V)");
disp(VLTP,"Lower trip point(V)");
