
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.11

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 50;             // kVA Rating of the Transformer
f = 50;             // Frequency in Hertz
Wo = 190;           // Meter Readings when HV Winding kept open in Watt
Vo = 230;           // Meter Readings when HV Winding kept open in Volts
Io = 6.5;           // Meter Readings when HV Winding kept open in Amphere
R2 = 0.06;          // Resistance of the LV Winding in Ohms
V1 = 2300;          // Voltage across the HV Side in Volts
V2 = 230;           // Voltage across the LV Side in Volts
AC = 230;           // Tranformer connected to AC mains in Volts


// CALCULATIONS

a = V1/V2;                                    // Trasformation ratio of the Transformer
Wc = Wo - ((Io ^ 2) * R2);                    // Core loss in Watts
Po = Wc;                                      // Core loss in Watts
Pc = Wc;                                      // Core loss in Watts
cos_theta_o = Po/(Vo*Io);                     // No load power factor
theta_o = acosd(cos_theta_o);                 // No load power factor angle in Degrees
Ic = Io * cosd(theta_o);                    
E = V1 - Io * exp(%i*(theta_o)*%pi/180);  
Rc = Pc/(Ic ^ 2 );                             // Core loss Resistance in Ohms
Im = Io * sind(theta_o);                       // Current through the Magnetizing branch in Amphre     
Xm = E/Im;                                     // Magnetizing  Reactance in Ohms
Ift = (S * 10 ^ 3)/V2;                         // Full Load current in Amphere
Ie = (Io/Ift)*100;                             // Percentage of the Exicting Current in Amphere


// DISPLAY RESULTS

disp("EXAMPLE : 3.11 : SOLUTION :-") ;
printf("\n  (a)  Core loss , Wc = %.2f W \n ",Wc);
printf("\n (b.1) No load power factor angle , theta_o = % .2f Degree \n",theta_o);
printf("\n (b.2) No load power factor , cos(theta_o) = % .6f \n",cos_theta_o );
printf("\n (c.1) Curent through Core loss Component , Ic = %.4f A \n ",Ic);
printf("\n (c.2) Core loss Resistance , Rc = %.2f Ohms \n ",Rc);
printf("\n  (d)  Current through the Magnetizing Component Xm , Im = % .2f A \n",Im);
printf("\n  (e)  Percentage of the Exicting Current  = % .2f Percent \n",Ie);
