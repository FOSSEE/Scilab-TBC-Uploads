
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.2

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// For Case (a)

S_a = 54;               // Total number of Slots
m_a = 3;                // Total number of Poles
p_a = 8;                // Total number of Phases

// For Case (b)

S_b = 32;               // Total number of Slots
m_b = 3;                // Total number of Poles
p_b = 4;                // Total number of Phases

// For Case (c)

S_c = 30;              // Total number of Slots
m_c = 3;               // Total number of Poles
p_c = 4;               // Total number of Phases


// CALCULATIONS
// For Case (a)

spp_a = S_a/(p_a*m_a);                // Slot per poles per phase 
l_a = 0 * spp_a;                      // Phase allociation Series
m_a = 1 * spp_a;                      // Phase allociation Series
n_a = 2 * spp_a;                      // Phase allociation Series
o_a = 3 * spp_a;                      // Phase allociation Series
p_a = 4 * spp_a;                      // Phase allociation Series
d_a = 0;                              // d_a = l_a (Rounding off)
e_a = 2;                              // e_a = m_a (Rounding off)
f_a = 4;                              // f_a = n_a (Rounding off)
g_a = 6;                              // g_a = o_a (Rounding off)
h_a = 9;                              // h_a = p_a (Rounding off)
R_a = e_a - d_a;                      // Phase allociation
Y_a = f_a - e_a;                      // Phase allociation
B_a = g_a - f_a;                      // Phase allociation
R1_a = h_a - g_a;                     // Phase allociation

// For Case (b)

spp_b = S_b/(p_b*m_b);                // Slot per poles per phase 
l_b = 0 * spp_b;                      // Phase allociation Series
m_b = 1 * spp_b;                      // Phase allociation Series
n_b = 2 * spp_b;                      // Phase allociation Series
o_b = 3 * spp_b;                      // Phase allociation Series
d_b = 0;                              // d_b = l_b (Rounding off)
e_b = 2;                              // e_b = m_b (Rounding off)
f_b = 5;                              // f_b = n_b (Rounding off)
g_b = 8;                              // g_b = o_b (Rounding off)
R_b = e_b - d_b;                      // Phase allociation
Y_b = f_b - e_b;                      // Phase allociation
B_b = g_b - f_b;                      // Phase allociation

// For Case (c)

spp_c = S_c/(p_c*m_c);                // Slot per poles per phase 
l_c = 0 * spp_c;                      // Phase allociation Series
m_c = 1 * spp_c;                      // Phase allociation Series
n_c = 2 * spp_c;                      // Phase allociation Series
d_c = 0;                              // d_b = l_b (Rounding off)
e_c = 2;                              // e_b = m_b (Rounding off)
f_c = 5;                              // f_b = n_b (Rounding off)
R_c = e_c - d_c;                      // Phase allociation
Y_c = f_c - e_c;                      // Phase allociation

// DISPLAY RESULTS

disp("EXAMPLE : 5.2 : SOLUTION :-") ;
printf("\n  For Case (a) Slot per poles per phase  , spp = %.3f \n ",spp_a);
printf("\n               Phase allociation series is %.f, %.f, %.f, %.f, %.f, %.f, %.f, %.f, %.f,slots are allocated respectively to R, Y, B, R, Y, B, R, Y, B....... phase in Sequence\n ",R_a,Y_a,B_a,R1_a,R_a,Y_a,B_a,R1_a,R_a);
printf("\n               By seeing Sequence its Slot per pole per phase is an Integer and such, balanced winding may be possible \n");
printf("\n  For Case (b) Slot per poles per phase  , spp = %.3f \n ",spp_b);
printf("\n               Phase allociation series is %.f, %.f, %.f \n",R_b,Y_b,B_b);
printf("\n               By seeing Sequence its Slot per pole per phase are not Integer therefore R-phase will have 8 slots whereas Y-phase and B-phase will have 12 slots \n");
printf("\n  For Case (c) Slot per poles per phase  , spp = %.1f \n ",spp_c);
printf("\n               Phase allociation series is %.f, %.f, %.f, %.f, %.f, %.f, %.f, %.f, %.f, %.f, %.f, %.f slots are allocated respectively to R, Y, B, R, Y, B, R, Y, B, R, Y, B....... phase in Sequence\n ",R_c,Y_c,R_c,Y_c,R_c,Y_c,R_c,Y_c,R_c,Y_c,R_c,Y_c);
printf("\n               By seeing Sequence its Slot per pole per phase is an Integer and such, balanced winding may be possible \n");
