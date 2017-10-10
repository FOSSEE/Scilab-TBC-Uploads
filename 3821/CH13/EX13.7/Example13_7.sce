////Chapter 13  Steam Engines
////Example 13.7 Page No 287
////Find Actual mean effective pressure
//Input data
clc;
clear;
P1=9;                         //Reciprocating engine pressure in bar
Pb=1.5;                       //Back pressure in bar
rc=100/25;                    //Cut-off 
K=0.8;                        //Diagram factor

//Calculation
Pm=((P1/rc)*(1+log(rc))-Pb); //Therotical mean effective pressure Pm
Pma=Pm*K;                         //Actual mean effective pressure Pma

///Output
printf('Therotical mean effective pressure= %f bar \n ',Pm);
printf('Actual mean effective pressure= %f bar \n',Pma);
