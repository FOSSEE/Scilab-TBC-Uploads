//Example 1_45
clc;
clear;
close;
format('v',5);
//given data :
RAB=4;//ohm
RAC=6;//ohm
RBC=2;//ohm
RBD=10;//ohm
RCD=14;//ohm
RA=RAB*RAC/(RAB+RAC+RBC);//ohm
RB=RAB*RBC/(RAB+RAC+RBC);//ohm
RC=RAC*RBC/(RAB+RAC+RBC);//ohm
Req=RA+(RB+RBD)*(RC+RCD)/(RB+RBD+RC+RCD);//ohm
disp(Req,"Total Resistance(ohm)");
