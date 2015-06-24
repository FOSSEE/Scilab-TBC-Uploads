clear;
clc;
//Example 10.1
Vbe=0.6;//(V)
b=100;
V1=5;
Io=200;//micro A
Iref=Io*(1+2/b);
printf('\nreference current=%.2f microA\n',Iref)
Iref=Iref*0.001;//mA
R1=(V1-Vbe)/Iref;
printf('\nR1=%.2f KOhm\n',R1)
