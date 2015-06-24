// Scilab code Exa7.6.3 : To calculate the %-resolution and resolution in KeV for scintillation detector for Cs-137 :P.no. 315 (2011)
F_W_H_M = 0.72; // Full width at half maximum, V
P_p = 6.0; // Peak position, V
E = 662; // Energy of photopeak, KeV
%_resolution = F_W_H_M/P_p*100; // Percentage resolution in percent
Res_KeV = %_resolution/100*E; // Resolution in KeV for Cs-137
printf("\n The percentage resolution   = %d percent    \n Resolution in KeV  = %4.1f KeV  ", %_resolution, Res_KeV)
// Result
//       The percentage resolution   = 12 percent    
//        Resolution in KeV  = 79.4 KeV     





































































