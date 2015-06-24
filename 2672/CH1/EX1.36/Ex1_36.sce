//Example 1_36
clc;
clear;
close;
format('v',5);
//given data :
R1=3;//ohm
R2=6;//ohm
R3=3;//ohm
R4=3;//ohm
R5=6;//ohm
R6=3;//ohm
R25=R2*R5/(R2+R5);//ohm
RBC=R25;//ohm
RAB=R4;//ohm
RAC=R6;//ohm
RA=RAB*RAC/(RAB+RAC+RBC);//ohm
RB=RAB*RBC/(RAB+RAC+RBC);//ohm
RC=RAC*RBC/(RAB+RAC+RBC);//ohm
RPQ=(R1+RB)*(R3+RA)/(R1+RB+R3+RA)+RC;//ohm
disp(RPQ,"Equivalent Resistance across P & Q(ohm)");
