
clear;
clc;
printf("\t Example 2.10.a\n");
    //part (i)
r=(50/2)*10^-3;            //radius pf circular tube
pa1=(190);                //vapour pressure of ammonia at pt.1 
pa2=(95);                 //vapour pressure of ammonia at pt.2
Dab=2.1*10^-5            //molecular diffusivity in m^2/s
z=1;
R=760*22.414/273;        //universal gas constant in mmHg*m^3*K*kmol    
    //carbondioxide and oxygen experiences equimolar counter diffusion 
T=298;                          //temperature in kelvin
pt=(10/780)*1.013*10^5;         //total pressure in pascal
Na=Dab*(pa1-pa2)/(z*R*T);       //flux in kmol/m^2*S
rate=Na*(3.14*r^2);            //rate of mass transfer..(3.14*r^2)-is the area
printf("\n the rate of mass transfer.:%f *10^-10 kmol/s",rate/10^-10);
  
//end