////Chapter 13  Steam Engines
////Example 13.6 Page No 287
///Find Therotical mean effective pressure
//Input data
clc;
clear;
P1=14;                            //Steam Engine pressure in bar
Pb=0.15;                          //Back pressure in bar
K=0.72;                           //Diagram factor
rc=100/20; 

//Calculation
Pm=((P1/rc)*(1+log(rc))-Pb); //Therotical mean effective pressure Pm
Pma=Pm*K;                         //Actual mean effective pressure Pma

//Output
printf('Therotical mean effective pressure= %f bar \n',Pm);
printf('Actual mean effective pressure= %f bar \n',Pma);
