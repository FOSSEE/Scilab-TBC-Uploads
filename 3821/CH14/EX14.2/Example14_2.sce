////Chapter No 14 Air Standard Cycles
////Example 2 Page No:302
///Find Engin work on carnot cycle
//Input data
clc;
clear;
QR=1.5;                 //tau=QS-QR
                        //T=Tmax-Tmin
T=300;                  //temperature limit of the cycle in degree celsius


//Calculation
//QR=1.5*(QS-QR)
QR=(1.5/2.5);           //Engin work on carnot cycle
eta=(1-QR);             //Thermal effeciency
Tmax=round((T/eta)-273.15);    //Maximum temperataure
Tmin=(Tmax-T);          //Minimum temperataure


//Output
printf('Engin work on carnot cycle= %f QS \n',QR);
printf('Thermal effeciency= %f percent \n',100*eta);
printf('Maximum temperataure= %f degree celsius \n ',Tmax);
printf('Minimum temperataure= %f degree celsius \n ',Tmin);
