
              //  Example 12.4
              
            // ==> For star-connection              
disp('   ** For star-connection  ** ');                
Vl=400;                // Voltage at load
Vph=Vl/1.732;          // Phase voltage
Zph=sqrt(20^2+15^2);   // Impedence per phase 
Il=Vph/Zph;            // Line current
disp(' The line current (Il) = '+string(Il)+' Amp');

Rph=20;                // Resistance per phase
CosQ=Rph/Zph;          // Power factor 
disp(' Power factor = '+string(CosQ)+' Lagging');

P=1.732*Vl*Il*CosQ;    // Total active power
disp(' Total active power = '+string(P/1000)+' kW');

             // ==> For Delta-connection
disp('   ** For Delta-connection  ** ');
Vph1=Vl;               // Phase voltage
Iph=Vph1/Zph;          // Phase current
IL=1.732*Iph;          // Load current
disp(' The Load current (IL) = '+string(IL)+' Amp');

disp(' Power factor = '+string(CosQ)+' Lagging');

P1=1.732*Vl*IL*CosQ;    // Total active power
disp(' Total active power = '+string(P1/1000)+' kW');


               //  p 412              12.4