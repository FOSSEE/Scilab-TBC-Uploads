//Exa1
clc;
clear;
close;
//given data :
SQ=4000//in sq.ft.
AQ=4300//in sq.ft.
SP=5//in rupees per sq.ft.
AP=5.50//in rupees per sq.ft.
//(i)  MCV
MCV=(SQ*SP)-(AQ*AP);//in rupees
//(ii) MPV
MPV=AQ*(SP-AP);//in rupees
//(iii) MUV
MUV=SP*(SQ-AQ);//in rupees
disp(MCV,"MCV=");
disp(MPV,"MPV=");
disp(MUV,"MUV=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")


