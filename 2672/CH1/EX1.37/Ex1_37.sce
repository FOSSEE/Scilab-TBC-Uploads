//Example 1_37
clc;
clear;
close;
format('v',5);
//given data :
V=12;//V
RAB=3;//ohm
RAC=3;//ohm
RBC=3;//ohm
RBD=3;//ohm
RCD=3;//ohm
RA=RAB*RAC/(RAB+RAC+RBC);//ohm
RB=RAB*RBC/(RAB+RAC+RBC);//ohm
RC=RAC*RBC/(RAB+RAC+RBC);//ohm
Req=RA+(RB+RBD)*(RC+RCD)/(RB+RBD+RC+RCD);//ohm
I=V/Req;//A
disp(I,"Current I supplied by the battery(A)");
