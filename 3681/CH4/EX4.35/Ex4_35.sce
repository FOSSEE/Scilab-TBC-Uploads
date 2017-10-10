// Calculating the continuous rating of motor
clc;
disp('Example 4.35, Page No. = 4.67')
// Given Data
Psh = 37.5;// Power rating of motor (in kW)
th = 30;// Time (in minuts)
Th = 90;// Heating time constant (in minuts)
// Calculation of the continuous rating of motor
ph = 1/(1-%e^(-th/Th));// Heating overload ratio
K = 0.7^(2);// Maximum efficiency occurs at 70% full load
pm = ((K+1)*ph-K)^(1/2);// Mechanical overload ratio
Pnom = Psh/pm;// Continuous rating of motor (in kW)
disp(Pnom,'Continuous rating of motor (kW)=');
//in book answer is 17.2 kW.  The answers vary due to round off error

