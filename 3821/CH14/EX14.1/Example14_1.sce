////Chapter No 14 Air Standard Cycles
////Example 14.1 Page No:302 
///Find thermal efficiency of the carnot cycle eta
///Input data
clc;
clear;
Tmax=477+273;        //Temperature limits for the engine 477 degree celcius
Tmin=27+273;         //Temperature limits for the engine 27 degree celcius
wd=150;              //Carnot cycle produce in KJ

//Calculatkion
eta=(1-(Tmin/Tmax)); //Thermal efficiency of the carnot cycle in %
Qs=(wd/eta);         //Added during the process in Kj


//Output
printf('thermal efficiency of the carnot cycle eta= %f percent \n',100*eta);
printf('added during the process Qs= %f KJ \n',Qs);
