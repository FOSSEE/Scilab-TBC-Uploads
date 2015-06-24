
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.1

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// For Case (a)

S_a = 30;               // Total number of Slots
m_a = 3;                // Total number of Poles
p_a = 2;                // Total number of Phases

// For Case (b)

S_b = 60;               // Total number of Slots
m_b = 3;                // Total number of Poles
p_b = 4;                // Total number of Phases

// For Case (c)

S_c = 24;              // Total number of Slots
m_c = 3;               // Total number of Poles
p_c = 4;               // Total number of Phases

// For Case (d)

S_d = 12;              // Total number of Slots
m_d = 3;               // Total number of Poles
p_d = 2;               // Total number of Phases


// CALCULATIONS
// For Case (a)

spp_a = S_a/(p_a*m_a);              // Slot per poles per phase 

// For Case (b)

spp_b = S_b/(p_b*m_b);              // Slot per poles per phase 

// For Case (c)

spp_c = S_c/(p_c*m_c);              // Slot per poles per phase 

// For Case (d)

spp_d = S_d/(p_d*m_d);              // Slot per poles per phase 


// DISPLAY RESULTS

disp("EXAMPLE : 5.1 : SOLUTION :-") ;
printf("\n For case (a) Slot per poles per phase, spp = %.f  \n ",spp_a);
printf("\n For case (b) Slot per poles per phase, spp = %.f  \n ",spp_b);
printf("\n For case (c) Slot per poles per phase, spp = %.f  \n ",spp_c);
printf("\n For case (d) Slot per poles per phase, spp = %.f  \n ",spp_d);


