
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.1

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

f = 50;                             // Generating Frequency in Hertz


// CALCULATIONS
// For Case(a)

Ns_a = 3000;                        // Synchronous speed in RPM
p_a = (120*f)/Ns_a;                 // Number of poles

// For Case(b)

Ns_b = 1000;                        // Synchronous speed in RPM
p_b = (120*f)/Ns_b;                 // Number of poles

// For Case(c)

Ns_c = 300;                         // Synchronous speed in RPM
p_c = (120*f)/Ns_c;                 // Number of poles

// For Case(d)

Ns_d = 40;                          // Synchronous speed in RPM
p_d = (120*f)/Ns_d;                 // Number of poles


// DISPLAY RESULTS

disp("EXAMPLE : 6.1 : SOLUTION :-") ;
printf("\n For Case(a) Ns = %.f, p = %.f \n ",Ns_a,p_a);
printf("\n For Case(b) Ns = %.f, p = %.f \n ",Ns_b,p_b);
printf("\n For Case(c) Ns = %.f, p = %.f \n ",Ns_c,p_c);
printf("\n For Case(d) Ns = %.f, p = %.f \n ",Ns_d,p_d);
