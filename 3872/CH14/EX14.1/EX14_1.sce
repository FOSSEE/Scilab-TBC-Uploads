//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 14 ; Example 14.1
//Scilab Version - 6.0.0 ; OS - Windows


clc;
clear;
Vdelpri=230;                                //The rated RMS line voltage of the primary winding in kV
Vwyesec=34.5;                               //The rated RMS line voltage of the secondary winding in kV
MVAoa=75;                                   //The MVA OA rating of the transformer
MVAfa=100;                                  //The MVA FA rating of the transformer
MVAfoa=133;                                 //The MVA FOA rating of the transformer
Zpu=0.07;                                   //The percentage impedance of the transformer in terms of MVA OA ratings
MVAbase=100;                                //The MVA base in MVA
kVbase=34.5;                                //The KV base in kV
Ioa=(MVAoa/3)/(Vwyesec/sqrt(3));            //The OA transformer current in the low voltage side in kA
Ifa=(MVAfa/3)/(Vwyesec/sqrt(3));            //The FA transformer current in the low voltage side in kA
Ifoa=(MVAfoa/3)/(Vwyesec/sqrt(3));          //The FOA transformer current in the low voltage side in kA
Zbasepu=Zpu*MVAbase/MVAoa;                  //The per unit impedance of the system in ohm pu
Isc3ph=(1/Zpu)*Ioa;                         //The transformer current during three phase bolted faultin kA
printf('\nThe OA transformer current in the low voltage side is %f kA',Ioa);
printf('\nThe FA transformer current in the low voltage side is %f kA\n',Ifa);
printf('The FOA transformer current in the low voltage side is %f kA\n',Ifoa);
printf('The per unit impedance of the system is %f pu\n',Zbasepu);
printf('The transformer current during three phase bolted fault is %f kA',Isc3ph);

//The answer in the book is not correct. Eg.75/(sqrt(3)*34.5)---Actual result is 1.255, but it is given as 7.372 in the book.
