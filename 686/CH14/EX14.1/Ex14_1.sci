clc();
clear;
 
 // To calculate the heat exchange by radiation between two walls 
 
 t1 = 212;                      // Temperature of contents in the bottle in F
 t2 = 68;                       // Ambient temperature in F
 
 e = 0.02 ;                     // Emmisivity of silver
 e12 = 1/(2/e-1);               // Exchange factor
  s = 0.173*10^-8;              // Stephens boltzmanns constant
  
 q = s*e12*((t1+460)^4-(t2+460)^4);    // Heat loss in Btu/hr
 printf("The heat flow per unit area of the inner wall is %.2f Btu/hr-ft^2",q);