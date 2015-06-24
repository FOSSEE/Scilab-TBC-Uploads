//Example 1_42
clc;
clear;
close;
format('v',4);
//given data :
V=24;//V
R1=2;//ohm
R2=3;//ohm
R3=5;//ohm
R4=8;//ohm
R5=2;//ohm
R6=5;//ohm
R7=3;//ohm
R8=6;//ohm
R57=R5+R7;//ohm//in series
RAB=R3;//ohm
RAC=R57;//ohm
RBC=R6;//ohm
RA=RAB*RAC/(RAB+RAC+RBC);//ohm
RB=RAB*RBC/(RAB+RAC+RBC);//ohm
RC=RAC*RBC/(RAB+RAC+RBC);//ohm
Req=R1+RA+(RC+R8)*(RB+R4)/(RC+R8+RB+R4)+R2;//ohm
I=V/Req;//A
disp(I,"Total current by the battery(A)");
