//Calculate the speed
//Chapter 2
//Example 2.23
//page 127
clear;
clc;
disp("Example 2.23")
V=200;                        //voltage in volts
Ia=20;                        //armature current in amperes
Ra=0.5;                        //armature resistance in ohms
Rse=0.2;                        //field winding resistance in ohms
E=V-(Ia*(Ra+Rse));
printf("In first case,E=%fV",E)
//E=k*phi*N
N=1000;                        //speed in rpm
Kphi=E/N;   
//a resistance R is connected in parallel with the series field which is called diverter
disp("when resistace R is added and new conditions")
I=20;                        //total current flowing
//current is equally devided between series field and diverter
Ise2=I/2;
//flux at 10A current is 20percent of flux at 20A current
p=0.70;                //percentage of flux
Kpih1=p*Kphi;
E1=(V-((Ia*Ra)+(Ise2*Rse)));
printf("Induced emf=%fV",E1)
//new speed is N1
N1=E1/(p*Kphi)
printf("\nN1=%frpm",N1)

