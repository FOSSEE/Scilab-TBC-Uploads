//Example 21.2   
clc;

//Given data
Em=0.007;          //in amperes
Eref=0.010;        //in amperes
Emax=0.02;         //in amperes
Emin=0.004;        //in amperes
//percentage error
Ep=(Em-Eref)*100/(Emax-Emin);
disp(Ep,'Percentage error in measurement');