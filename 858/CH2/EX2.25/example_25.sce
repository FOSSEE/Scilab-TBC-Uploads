clc
clear
printf("example 2.25 page number 80\n\n")

//to find the time for electroplating
volume=10*10*0.005;    //in cm3
mass=volume*8.9;
F=96500;
atomic_mass=58.7    //in amu
current=2.5     //in Ampere

charge=(8.9*F*2)/atomic_mass;
yield=0.95;
actual_charge=charge/(yield*3600);
t=actual_charge/current;

printf("time required = %f hours",t)
