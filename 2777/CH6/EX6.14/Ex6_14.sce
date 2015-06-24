
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.14

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


v = 1.0;                       // Operating voltage of the Synchronous generator in pu
xd = 1.0;                      // Direct axis reactances in pu
xq = 0.5;                      // Quadrature axis reactances in pu
I = 1.0;                       // Rated current in pu


// CALCULATIONS

// For Case (a) 0.80 lagging Power factor (Refer figure 6.36 page no. 421)

pf_a = 0.8;                                                     // Power factor
pfa_a = acosd(pf_a);                                            // Power factor angle in deg
pa_a = atand((I*xq*cosd(pfa_a))/(v+I*xq*sind(pfa_a)));          // Power angle in deg
Iq_a = I*cosd(pfa_a+pa_a);
Id_a = I*sind(pfa_a+pa_a);
Eo_a = sqrt((v+Id_a*xd*cosd(pa_a)-Iq_a*xq*sind(pa_a))^2 + (Id_a*xd*sind(pa_a)+Iq_a*xq*cosd(pa_a))^2);                                              // Induced EMF in Volts
pr_a = ((Eo_a-v)/v)*100;                                             // Percentage regulation

// For Case (b) Unity Power factor (Refer figure 6.37 page no. 422)

pf_b = 1.0;                                                     // Power factor
pfa_b= acosd(pf_b);                                            // Power factor angle in deg
pa_b = atand((I*xq*cosd(pfa_b))/(v+I*xq*sind(pfa_b)));         // Power angle in deg
Iq_b = I*cosd(pfa_b+pa_b);
Id_b = I*sind(pfa_b+pa_b);
Eo_b = sqrt((v+Id_b*xd*cosd(pa_b)-Iq_b*xq*sind(pa_b))^2 + (Id_b*xd*sind(pa_b)+Iq_b*xq*cosd(pa_b))^2);                                              // Induced EMF in Volts
pr_b = ((Eo_b-v)/v)*100;                                             // Percentage regulation

// For Case (c) 0.80 lagging Power factor (Refer figure 6.36 page no. 421)

pf_c = 0.8;                                                     // Power factor
pfa_c = acosd(pf_c);                                            // Power factor angle in deg
pa_c = atand((I*xq*cosd(pfa_c))/(v-I*xq*sind(pfa_c)));          // Power angle in deg
Iq_c = I*cosd(pfa_c-pa_c);
Id_c = I*sind(pfa_c-pa_c);
Eo_c = sqrt((v-Id_c*xd*cosd(pa_c)-Iq_c*xq*sind(pa_c))^2 + (-Id_c*xd*sind(pa_c)+Iq_c*xq*cosd(pa_c))^2);                                              // Induced EMF in Volts
pr_c = ((Eo_c-v)/v)*100;                                              // Percentage regulation


// DISPLAY RESULTS

disp("EXAMPLE : 6.14: SOLUTION :-");
printf("\n For Case (a) 0.80 lagging Power factor \n  Induced EMF, EMF = %.4f V \n",Eo_a)
printf("\n Power angle = %.1f degree \n",pa_a)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",pr_a) 
printf("\n For Case (b) Unity Power factor \n  Induced EMF, EMF = %.2f V \n",Eo_b)
printf("\n Power angle = %.2f degree \n",pa_b)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",pr_b) 
printf("\n For Case (c) 0.80 leading Power factor \n  Induced EMF, EMF = %.4f V \n",Eo_c)
printf("\n Power angle = %.2f degree \n",pa_c)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",pr_c) 
