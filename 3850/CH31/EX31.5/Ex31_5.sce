
//To Find the Equivalent Capacitance of the combination

//Example 31.5

clear;

clc;

C1=10*10^-6;//Capacitance of the First Capacitor

C2=20*10^-6;//Capacitance of the Second Capacitor

C=C1+C2;//Equivalent capacitance of parallel combination of C1 and C2

C3=30*10^-6;//Capacitance of the third Capacitor

Ceq=C*C3/(C+C3);//Equivalent capacitance of Series combination of C and C3

printf("The equivalent Capacitance of the combination= %f uF",Ceq*10^6);
