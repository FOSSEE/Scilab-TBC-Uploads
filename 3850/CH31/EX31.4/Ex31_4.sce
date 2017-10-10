
//To Calculate the Charge on each Capacitor

//Example 31.4

clear;

clc;

C1=10*10^-6;//Capacitance of First Capacitor

C2=20*10^-6;//Capacitance of Second Capacitor

C=C1*C2/(C1+C2);//Equivalent capacitance of C1 and C2 in series

V=30;//Apllied Voltage

Q=C*V;//Formula for finding the charge on each capacitor

printf("The charge on each capacitor=%f uC",Q*10^6);
