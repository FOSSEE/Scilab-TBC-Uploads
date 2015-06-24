//Calculating the efficiency and voltage regulation//Chapter 3
//Example 3.19
//page 225
clear;
clc;
disp("Example 3.19")
kVA=50;                        //rating of the transformer
V1=3300;                        //open circuit primary voltage
Culoss=540;                    //copper loss from short circuit test
coreloss=460;                  //core loss from open circuit test
V1sc=124;                      //short circuit primary voltage in volts
I1sc=15.4;                      //short circuit primary current in amperes
Psc=540                         //short circuit primary power in watts       
phi=acosd(0.8)
effi=(kVA*1000*cosd(phi)*100)/((kVA*1000*cosd(phi))+Culoss+coreloss)
printf("From the open-circuit test, core-loss=%dW",coreloss);
printf("\nFrom short circuit test, copper loss=%dW",Culoss);
printf("\nThe efficiency at full-load and 0.8 lagging power factor=%f",effi);
Ze=V1sc/I1sc;
Re=Psc/I1sc^2;
Xe=sqrt(Ze^2-Re^2);
V2=3203;
phi2=acosd(0.8);
phie=acosd(Culoss/(V1sc*I1sc));
reg=(V1sc*cosd(phie-phi2)*100)/V1;
printf("\nVoltage regulation=%dpercent",reg)