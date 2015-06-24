//Calculate voltsge to be applied//Chapter 3
//Example 3.20
//page 226
clear;
clc;
disp("Example 3.20")
kVA=100;
V1=6600;                //primary voltage in volts
V2=330;                  //secondary voltage in volts
f=50;                    //frequency in hertz
V1sc=100;                      //short circuit primary voltage in volts
I1sc=10;                      //short circuit primary current in amperes
Psc=436;                         //short circuit primary power in watts       
Ze=V1sc/I1sc;
Re=Psc/I1sc^2;
phi=acosd(0.8);
Xe=sqrt(Ze^2-Re^2);
printf("\nTotal resistance=%fohms",Re);
printf("\nTotal impedence=%fohms",Ze)
Il=(kVA*1000)/V1;
V1dash=(sqrt(((V1*cosd(phi))+(Il*Re))^2+((V1*sind(phi))+(Il*Xe))^2));
printf("\nfull voltage current,V1=%dV",V1dash)