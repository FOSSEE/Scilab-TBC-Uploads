
clear;
clc;

printf("\t Example 2.9\n");

k=10; // thermal conductivity of ressistor, W/(m*K)
a=2000; //density of ressistor, kg/m^3
l=0.01; //length of cylinder, m
A=1.33*10^-4; //area of ressistor's surface, m^2
T1=308; // temperature of air in the cabinet,K
Cp=700; //heat capacity of ressistor, J/kg/K
Heff=18.44; // the effective heat  transfer coefficient of parallel convection and radiation process,  W/(m^2*K)
Bi=Heff*(0.0036/2)/k;
T=a*Cp*3.14*l*(0.0036)^2/(4*Heff*A); //since from previous example,To=72.3C, we have Tres=T1+(To-T)*exp(-t/T),Tres=308+(37.3)*exp(-t/T). 95% of the temperature drop has occured when t=T*3=174s.
t=3*T;
printf("\t time for 95 percent cooling of ressistor is : %.0f s\n",t);
//End