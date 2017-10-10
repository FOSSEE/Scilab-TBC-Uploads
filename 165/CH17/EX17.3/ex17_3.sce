//Example 17.3
close;
clc;
//Given Data
Vin=5;        //in volts
Rin=2500;     //in ohms
Rf=1000;      //in ohms
//Calculation of output voltage
Vo=-Vin*Rf/Rin;
printf('\nOutput Voltage = %.2f V \n',Vo)