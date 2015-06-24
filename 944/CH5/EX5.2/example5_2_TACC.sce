//example 5.2

clear;
clc;

//given:
T1=250;//temperature of heat rejection[K]
T2=1000;//temperature of heat absorption[K]

//to analyse the efficiency of the engine 
e=1-(T1/T2);
printf("Efficiency of the corresponding carnot engine = %f\n",e);
disp(" Therefore , the inventors claim of 80% efficiency is absurd.The patent application should be rejected");
