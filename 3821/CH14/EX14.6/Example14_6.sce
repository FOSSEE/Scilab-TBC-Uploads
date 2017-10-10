////Chapter No 14 Air Standard Cycles
////Example No 14.6 Page No 308
///Find standard efficiency
//Input data
clc;
clear;
T1=27+273;                      //Initial temp in degree celsius                        
T2=450+273;                     //Final temp in degree celsius      
gamma1=1.4;

//Calculation
r=(T2/T1)^(1/(gamma1-1));       //Isentropic process 
eta=100*(1-(1/(r^(gamma1-1)))); //Otto cycle air standard effeciency in %

//Output
printf('compression ratio= %f \n ',r);
printf('standard efficiency= %f percent \n',eta);
