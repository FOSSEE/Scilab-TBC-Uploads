
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.3

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 2;                                      // Total number of poles


// CALCULATIONS
// For Case(a)

f_a = 10;                                   // Frequency in Hertz
Ns_a = (120*f_a)/p;                         // Synchronous speed in RPM 

// For Case(b)

f_b = 50;                                   // Frequency in Hertz
Ns_b = (120*f_b)/p;                         // Synchronous speed in RPM 

// For Case(c)

f_c = 60;                                   // Frequency in Hertz
Ns_c = (120*f_c)/p;                         // Synchronous speed in RPM 

// For Case(d)

f_d = 100;                                  // Frequency in Hertz
Ns_d = (120*f_d)/p;                         // Synchronous speed in RPM 

// For Case(e)

f_e = 400;                                  // Frequency in Hertz
Ns_e = (120*f_e)/p;                         // Synchronous speed in RPM 


// DISPLAY RESULTS

disp("EXAMPLE : 6.3 : SOLUTION :-");
printf("\n For Case (a) When f = %.f, Synchronous speed, Ns = %.f RPM \n",f_a,Ns_a)
printf("\n For Case (b) When f = %.f, Synchronous speed, Ns = %.f RPM \n",f_b,Ns_b)
printf("\n For Case (c) When f = %.f, Synchronous speed, Ns = %.f RPM \n",f_c,Ns_c)
printf("\n For Case (d) When f = %.f, Synchronous speed, Ns = %.f RPM \n",f_d,Ns_d)
printf("\n For Case (e) When f = %.f, Synchronous speed, Ns = %.f RPM \n",f_e,Ns_e)
