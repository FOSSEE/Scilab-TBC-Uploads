
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.9

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 4;                      // Number of the pole in the Generator
Ia = 100;                   //  supplying Current by the Generator in Amphere
Za = 500;                   // Armature conductor
beta = 8;                   // Brush shift in degrees
If = 5;                     // Current in the Seperately exicted field winding 
ratio = 0.7;                // Ratio of Pole arc to Pole pitch


// CALCULATIONS
// For case (a) Lap winding

a_a = p;                                         // Number of the Parallel Paths
AT_a = (Za*Ia)/(2*a_a*p);                        // Amphere turns per pole
ATd_a = (beta*Za*Ia)/(360*a_a);                  // Demagnetizing Armature Amphere turns per pole
ATc_a = ((1/p)-(beta/180))*((Za*Ia)/(2*a_a));    // CrossMagnetizing Armature Amphere turns per pole
ATw_a = ratio*AT_a;                            // Amphere turns of Compensating winding

// For case (b) Wave winding

a_b = p/2;                                       // Number of the Parallel Paths
AT_b = (Za*Ia)/(2*a_b*p);                        // Amphere turns per pole
ATd_b = (beta*Za*Ia)/(360*a_b);                  // Demagnetizing Armature Amphere turns per pole
ATc_b = ((1/p)-(beta/180))*((Za*Ia)/(2*a_b));    // CrossMagnetizing Armature Amphere turns per pole
ATw_b = ratio*AT_b;                              // Amphere turns of Compensating winding


// DISPLAY RESULTS

disp("EXAMPLE : 4.9 : SOLUTION :-") ;
printf("\n For LAP winding \n\n (a.1) Amphere turns per pole, AT = %.1f AT \n",AT_a);
printf("\n (a.2) Demagnetizing Armature Amphere turns per pole, ATd = %.1f AT \n",ATd_a);
printf("\n (a.3) Cross-Magnetizing Armature Amphere turns per pole, ATc = %.1f AT \n",ATc_a);
printf("\n (a.4) Amphere turns of Compensating winding, ATw = %.1f AT \n",ATw_a);
printf("\n For WAVE winding \n\n (b.1) Amphere turns per pole, AT = %.f AT \n",AT_b);
printf("\n (b.2) Demagnetizing Armature Amphere turns per pole, ATd = %.2f AT \n",ATd_b);
printf("\n (b.3) Cross-Magnetizing Armature Amphere turns per pole, ATc = %.f AT \n",ATc_b);
printf("\n (b.4) Amphere turns of Compensating winding, ATw = %.1f AT \n",ATw_b);
