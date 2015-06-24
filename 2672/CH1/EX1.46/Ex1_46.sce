//Example 1_46
clc;
clear;
close;
format('v',5);
//given data :
RAD=20;//ohm
RAC=30;//ohm
RDC=50;//ohm
RDB=50;//ohm
RBC=45;//ohm
RAN=RAD*RAC/(RAD+RAC+RDC);//ohm
RDN=RAD*RDC/(RAD+RAC+RDC);//ohm
RCN=RAC*RDC/(RAD+RAC+RDC);//ohm
RAB=RAN+(RDN+RDB)*(RCN+RBC)/(RDN+RDB+RCN+RBC);//ohm
disp(RAB,"Total Resistance between terminal A & B(ohm)");
