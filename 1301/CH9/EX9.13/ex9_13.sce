clc;
mw=5;   //mass of water in kg
c=1;    //specific heat of water in kcal/(kg.degree celcius)
delT=40;  //change in temp in celcius
Lf=80;    //Latent heat of Fusion in kcal/kg
mice=(mw*c*delT)/Lf;   //calculating mass of ice in kg
disp(mice,"Mass of Ice in kg = ");     //displaying result.