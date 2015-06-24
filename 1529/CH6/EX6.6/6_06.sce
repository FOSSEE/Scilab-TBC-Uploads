//Chapter 6, Problem 6
clc;
V=200;                  //Voltage across plates
d=0.8*10^-3;            //Distance between plates
E=V/d;                  //Calculating electric field density
e=8.85*10^-12;
er=2.3;
D1=E*e;                     //Calculating electric flux density for air
D2=E*e*er;                  //Calculating electric flux density for polythene
printf("Electric field strength = %f kV/m\n\n",E/1000);
disp("(a)");
printf("Electric flux density = %f μC/m2\n\n",D1*10^6);
disp("(b)");
printf("Electric flux density = %f μC/m2",D2*10^6);
