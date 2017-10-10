///Chapter 9 Law Of Thermodynamics
///Example 9.8 Page No:170
/// Find DeltaUab
///input data
clc;
clear;
///Data consistent with first law pf thermodynamics
Qabcd=-22;                    //In KJ
N=150;                        //In Cycles/min
Qab=17580;                    //In KJ/min
Qbc=0; 
Qcd=-3660;                    //In KJ/min
Wab=-8160;                    //In KJ/min
Wbc=4170;                    //In KJ/min 
DeltaUcd=-21630;              //In KJ/min


///Calculation
DeltaUab=Qab-Wab;              //In KJ/min
DeltaUbc=Qbc-Wbc;              //In KJ/min 
Wcd=Qcd-DeltaUcd;              //In KJ/min
Qabcd1=-220*150;               //In KJ/min
Qda=((Qabcd1)-(Qab+Qbc+Qcd));  //In KJ/min
Wda=((Qabcd1)-(Wab+Wbc+Wcd));     //In KJ/min
DeltaUabcd=0;
DeltaUda=((DeltaUabcd)-(DeltaUab+DeltaUbc+DeltaUcd)); //In KJ/min
NWO=Qabcd1/60;                   //In KW

///Output
printf('DeltaUab= %f Kj/min \n ',DeltaUab);
printf('DeltaUbc= %f KJ/min \n ',DeltaUbc);
printf('Wcd=%f KJ/min \n ',Wcd);
printf('Qabcd1= %f KJ/min \n ',Qabcd1);
printf('Qda= %f KJ/min \n ',Qda);
printf('Wda= %f KJ/min \n ',Wda);
printf('DeltaUabcd= %f KJ/min \n ',DeltaUabcd);
printf('DeltaUda= %f KJ/min \n',DeltaUda);
printf('NWO= %f Kw \n',NWO);
