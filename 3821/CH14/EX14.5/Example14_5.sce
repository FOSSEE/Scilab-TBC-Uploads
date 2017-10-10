////Chapter No 14 Air Standard Cycles
////Example No 14.5 Page No 308 
///Find compression ratio
///Input data
clc;
clear;
P1=1;                          //Isentropic Compression in bar
P2=20;                         //Isentropic Compression in bar
//Consider air as the working fluid therefore
gamma1=1.4;


//Calculation
r=(P2/P1)**(1/gamma1);          //Isentropic process        
eta=100*(1-(1/(r^(gamma1-1))));   //Otto cycle air standard effeciency in %


//Output
printf('compression ratio= %f \n ',r);
printf('standard efficiency= %f percent \n',eta);
