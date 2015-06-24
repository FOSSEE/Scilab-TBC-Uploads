
//scilab 5.4.1
//windows 7 operating system
//chapter 8:Junction Transistors:Biasing and Amplification
clc;
clear;
//given data
hib=30;     //h parameter of CB a transistor
hrb=4*10^-4;        //h parameter of CB a transistor
hfb=-0.99;        //h parameter of CB a transistor
hob=0.9*10^-6;        //h parameter of CB a transistor in S
Rl=6*10^3;       //Load resistance in ohms

AI=-hfb/(1+(hob*Rl));        //Current gain
disp(AI,'AI=');

Ri=hib-((hfb*hrb*Rl)/(1+(hob*Rl)));    //Input resistance in ohms
disp('ohms',Ri,'Ri=');

Ro=hib/((hib*hob)-(hfb*hrb));       //Output Resistance in kohms
disp('kilo ohms',Ro*10^-3,'Ro=');

AV=AI*Rl/Ri;        //Voltage gain
disp(AV,'AV=');

AP=AI*AV;       //Power gain
disp(AP,'AP=');
