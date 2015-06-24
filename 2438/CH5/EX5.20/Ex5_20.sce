//==============================================================================
// chapter 5 example 20

clc;
clear;
 
 //input data
 Ps      = 10^7;
 V      = 33*10^3;
 R      = 2;
 
 //calculation
 I      = Ps/V;
 Pd     = (I^2*R)/1000;
 n      = ((Ps-Pd)/Ps)*100;
 v      = I*R;
 Vd     = (v/V)*100;              //percentage voltage drop
 
 //result
 mprintf('efficiency =%0f percent\n',n);
 mprintf('voltage drop =%3.2f percent\n',Vd);
 
