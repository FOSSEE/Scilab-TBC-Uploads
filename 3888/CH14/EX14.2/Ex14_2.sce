//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 14.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=220;                                                                  //Supply voltage in kV
f=50;                                                                   //Supply frequency in Hz 
r=1;                                                                    //Radius of the conductor in cm
d=400;                                                                  //Distance between the conductor in cm
m=0.96;                                                                 //Smooth surface value of conductor
b=73;                                                                   //Barometric pressure in cm of Hg
t=20;                                                                   //Temperature in celcius
adf=3.92*b/(273+t);                                                     //Air density factor 
Vc=r*21.1*m*0.9767*log(d/r);                                            //Phase to neutral critical disruptive voltage in kV
Vp=V/sqrt(3);                                                           //Line phase voltage in kV
Pc=241*10^(-5)*(f+25)/0.9767*sqrt(r/d)*(Vp-Vc)^(2);                     //Peek's formula for corona loss in a fair weather in kW/phase/km
Pc1=241*10^(-5)*(f+25)/0.9767*sqrt(r/d)*(Vp-0.8*Vc)^(2);                //Peek's formula for corona loss in a rainy weather in kW/phase/km


printf("\nThe fair weather corona loss is %.2f kW/phase/km",Pc);
printf("\nThe rainy weather corona loss is %.2f kW/phase/km",Pc1);












