///Chapter 9 Law Of Thermodynamics
///Example 9.9 Page No:171
///Find Net heat transfer in 1st cycle
///Input data
clc;
clear;
Qab=-6500;  //Heat transferred in 1st process KJ/min
Qbc=0;      //Heat transferred in 2nd process 
Qcd=-10200; //Heat transferred in 3rd process KJ/min
Qda=32600;  //Heat transferred in 4th process KJ/min
Wab=-1050;  //Heat transferred in 1st process KJ
Wbc=-3450;  //Heat transferred in 2nd process KJ
Wcd=20400;  //Heat transferred in 3rd process KJ
Wda=0;      //Heat transferred in 4th process

///Calculator
dQ=Qab+Qbc+Qcd+Qda; //Net heat transfer in 1st cycle
dW=Wab+Wbc+Wcd+Wda; //Net work done in 1st cycle
dW1=dW/60;          //Net work done in 1st cycle
DeltaUab=Qab-Wab;   //ab process
DeltaUbc=Qbc-Wbc;   //bc processes
DeltaUcd=Qcd-Wcd;   //cd processes
DeltaUda=Qda-Wda;   //dc processes

///Output
printf('Net heat transfer in 1st cycle= %f KJ/min \n',dQ);
printf('Net work done in 1st cycle= %f KJ/min \n',dW);
printf('Net work done in 1st cycle=%f KW \n ',dW1);
printf('ab process= %f KJ/min \n',DeltaUab);
printf('bc processes= %f KJ/min \n ',DeltaUbc);
printf('cd processes= %f KJ/min \n ',DeltaUcd);
printf('dc processes= %f KJ/min \n',DeltaUda);
