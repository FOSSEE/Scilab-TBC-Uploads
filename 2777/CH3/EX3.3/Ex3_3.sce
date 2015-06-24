
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.3

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

f = 50;                 // Frequency in Hertz
N = 50;                 // Number of turns in Secondary
E =220;                 // Induced voltage in Volts


// CALCULATIONs 

phi_m = E/(4.44*f*N);        // Maximum value of the Flux in Weber


// DISPLAY RESULTS

disp("EXAMPLE : 3.3 : SOLUTION :-") ;
printf("\n (a) Maximum value of the Flux , phi_m = % .7f Wb \n ",phi_m);
