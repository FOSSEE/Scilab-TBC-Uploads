/////////Chapter 10 Properties Of Steam
///Example 10.23 Page No:203
///Find Constant pressure process
//Input data
clc;
clear;
ms=1000;                      //Steam in Kg/h       
P=16;                         //Absolute pressure in bar
x2=0.9;                       //Steam is dry 
t1=30+273;                    //temperature in degree celsius
tsup=380;                     //tmperature rised in degree celsius                                                            
                    
//from steam table(pressure basis at 16 bar)
h1=125.7;                     //in KJ/Kg
ts=201.4;                     //In degree celsius
hf=858.5;                     //in kJ/Kg
hfg=1933.2;                   //in kJ/Kg
hg=2791.7;                    //in kJ/Kg
Cps=2.3;

//Calculation       
h2=hf+x2*hfg;                 //Final enthalpy of wet steam in KJ/Kg 
Q1=(ms*(h2-h1))*(10^(-3));       //Constant pressure process in KJ/h 
h3=hg+Cps*(tsup-ts);          //Final enthalpy of superheated steam in KJ/g
Q2=(ms*(h3-h2))*(10^(-3));       //Suprheated steam in KJ/h

//Output
printf('Final enthalpy of wet steam= %f KJ/Kg \n ',h2);
printf('Constant pressure process= %f KJ/h \n',Q1);
printf('Final enthalpy of superheated steam= %f KJ/g \n',h3);
printf('Suprheated steam= %f KJ/h \n',Q2);
