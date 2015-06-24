clear;
clc();

 // to calculate the heat loss from pipe
 
 d1=2.375/12;                   // internal diameter of pipe in ft
 t=1/12;                        // thickness of insulating material in ft
 d2=d1+2*t;                     // external (insulation)diameter of pipe in ft
 k=0.0375;                      // thermal conductivity of insulating material in Btu/hr-ft-F
 l=30;                          // length of pipe in ft
 t1=380;                        // inner surface temperature of insulation
 t2=80;                         // outer surface temperature of insulation
 
 q=2*%pi*k*(t1-t2)/log(d2/d1);  // heat loss per unit length
 printf("\n Heat loss per linear foot is %.d Btu/hr",q)
 
 qtot=round(q)*l;               // heat loss for 30 ft pipe
 printf("\n Total heat loss through 30 ft of pipe is %d Btu/hr",qtot)
 