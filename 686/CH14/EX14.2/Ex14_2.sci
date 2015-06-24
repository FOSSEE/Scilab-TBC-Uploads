clc();
clear;
 
 // To calculate the heat exchange by radiation between two walls 
 
 t1 = 2500;                     // Temperature of saturated steam in F
 t2 = 600;                      // Temperature of tube wall in F
 p = 0.87;                      // Emperical factor
 A = 148.5;                     // Area of tube walls 
 A1 = 168.8;                    // Area of walls lined with cooling tubes
 e = 0.8 ;                     // Emmisivity of silver
  s = 0.173*10^-8;              // Stephens boltzmanns constant
  
 q = p*s*e*A*((t1+460)^4-(t2+460)^4);    // Heat loss in Btu/hr
 L = 649.4;                               // Latent heat of vapourization in Btu/lb
 m = q/L;                                 // Generation of steam in lb/hr
 A2 = A1*%pi/2;                           // Area of tube in ft^2
 h = q/A2;                                // Heat absorption rate
 printf("The heat absorption per square foot of tube area is %d Btu/hr-ft^2" ,h);
 
 
 