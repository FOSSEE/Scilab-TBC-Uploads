//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 10 ; Example 10.10
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

Srated = 30;                                          //power rating in MVA
Vprtr = 34.5;                                         //primary side of transformer voltage in kV
Vsectr = 138;                                         //secondary side of transformer voltage in kV
IArated = (Srated*10^6)/(sqrt(3)*Vsectr*10^3);        //Rated current on the 138-kV side of the transformer in Amperes
CTratiosec = 150/5;                                   //CT ratio on the 138-kV side
IA = IArated/CTratiosec;                              //differential current in 138kV side in Amperes
Iarated = (Srated*10^6)/(sqrt(3)*Vprtr*10^3);         //Rated current on the 34.5-kV side of the transformer in Amperes
CTratiopr = 500/5;                                    //CT ratio on the 34.5-kV side
Ia = Iarated/CTratiopr;                               //differential current in 138kV side in Amperes
Iab = Ia*sqrt(3);                                     //diffrential current in lefthand re-straining winding of figure 10.37 in Amperes
crtratio = Iab/IA;                                    //ratio of the currents in the left- to righthand restraining winding
TA = 5;
Tab = 10;
tapratio = Tab/TA;                                    //closest relay tap ratio 
%mismatch = (((Iab/Tab)-(IA/TA))/(Iab/Tab))*100;      //percentage mismatch for tap setting 
printf('\nRated current on the 138kV side of the transformer is %f A',IArated);
printf('\nRated current on CT ratio in  138 kV side of the transformer is %f A',IA);
printf('\nRated current on the 34.5kV side of the transformer is %f A',Iarated);
printf('\nRated current on CT ratio in 34.5kV side of the transformer is %f A',Ia);
printf('\nThe percentage mismatch for the tap setting is %f',%mismatch);



