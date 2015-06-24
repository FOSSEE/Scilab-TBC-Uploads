clc();
clear;

// To find the division of the heating surface
 t1 = 2500;                    // temperature of contenets of the bottle in F
 t2 = 600;                     // Ambient temperature in F
 e1 = 0.048;                   // Interchange factor in 1800 F
 e2 = 0.044;                   // Interchange factor in 600 F
 e = 0.94;                     // Emmisivity of walls
 p = 1;                        // Emperical factor 
 F = 2*0.88;                    // Shape factor
 s = 0.173*10^-8;              // Stephens boltzmanns constant
 
 h = s*e*p*F*((t1+460)^4-(t2+460)^4)/(%pi*(t1-t2));       
 // Heat transfer coefficient 
 
 
 // Heat transfer for the tubes within the convective surface
 // Radiation of CO2 and waterin the combustion gases 
 L = 0.5;                       // Eqivalent length of gas layer
 Tg = 1800;                     // Gas temperature in F
 Tw = 600;                      // Surface temperature of tubes in F
 
 // From the table the emmisivity of carbon dioxide can be known
 ec1 = 0.06;                    // Emmmisivity of CO2 at 1800F
 ec2 = 0.055;                   // Emmisivity of Co2 at 600F
 ew = 0.8;                      // Emmisivity of tube wall 
 qc = s*ew*p*(ec1*(Tg+460)^4-ec2*(t2+460)^4);
 // Heat loss by carbon dioxide in Btu/hr
 
// From the table the emmisivity of water can be known
 eh1 = 0.0176;                    // Emmmisivity of water at 1800F
 eh2 = 0.0481;                    // Emmisivity of water at 600F
 qh = s*ew*p*(eh1*(Tg+460)^4-eh2*(t2+460)^4);
 // Heat loss by water in Btu/hr
 
 qg = qc + qh;                     // Heat heat flow by gas radiation
 hg = qg/(Tg-t2);                  // Heat transfer coeffcoent by gas radiation
 printf("The heat transfer coefficient by gas radiation is %.2f Btu/hr-ft^2 \n",hg);
 
 // Heat transfer by convection can be found out using values iun the table
 hc = 8.14;                         // Heat transfer by convection in Btu/hr-ft^2-F
  printf(" The heat transfer coefficient by gas radiation is %.2f Btu/hr-ft^2\n",hc);
  
 ht = hc + hg;                     // Total heat transfer coefficient for convective surface
 
 printf("The covective surface have greater heat transfer coefficients than the radiating surface. Therefore it is advantageous to line the whole combustion chamber with narrowly spaced cooling tubes");
 
           
 
 
 
 
 
 