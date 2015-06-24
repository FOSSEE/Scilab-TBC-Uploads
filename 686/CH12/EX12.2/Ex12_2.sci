clc();
clear;
 
 // To calculate the heat exchange by radiatiojn between two walls 
 
 t1 = 2500;                   // Temperature of saturated steam in F
 t2 = 600;                    // External temperature of tube walls in F
 e = 0.8;                     // Emmisivity of tube wall arrangement
 p = 0.87;                    // Emperical factor
 A = 148.5;                   // Area of the wall in ft^2
 s = 0.173*10^-8;             // Stephens boltzmanns constant
 q = s*e*A*p*(((t1+460)^4)-((t2+460)^4));    // heat loss in Btu/hr
 
 printf("The heat exchange per unit area is %.2f Btu/hr",q);
 