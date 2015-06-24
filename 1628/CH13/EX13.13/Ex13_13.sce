
              // Example 13.13 
              
             // For 80-kW load at pf=1 (for 6 hours)                       
t=6;                     // Time in Hours              
p=80;                    // Power in kW             
Eo=p*t;                  // O/p energy
pf=1;                    // Power factor
kVA=p/pf;                // kVA rating
kVAo=200;                // kNA at full-load
Pcl=3.02;                // Copper losses at full-load
Pc=(kVA/kVAo)^2*Pcl;     // Copper losses 
Pi=1.6;                  // Iron losses
Pl=Pc+Pi;                // Total losses
Tloss=Pl*6;              // Total losses in 6 hours

             // For 160-kW load at pf=0.8 (for 8 hours)
p1=160;                    // Power in kW             
E1=p1*8;                   // O/p energy
pf1=0.8;                   // Power factor
kVA1=p/pf;                 // kVA rating
Pcl1=3.02;                 // Copper losses at full-load
Pc1=Pcl1;                  // Copper losses 
Pl1=Pc1+Pi;                // Total losses
Tloss1=Pl1*8;              // Total losses in 6 hours

             // For No-load (for 10 hours)
E2=0;                      // O/p Energy 
Pc2=0;                     // Copper losses
Pl2=Pc2+Pi;                // Total losses
Tloss2=Pl2*10;             // Total losses in 10 hours
Wo=Eo+E1+E2;               // Total O/P energy
W1=Tloss+Tloss1+Tloss2;    // Total energy losses
n=Wo/(Wo+W1);              // All-Day efficiency
disp('All-Day efficiency = '+string(n*100)+' %'); 


                 //     p 510         13.13

             // For 160-kW load at pf=1 (for                        
t=6;                     // Time in Hours     