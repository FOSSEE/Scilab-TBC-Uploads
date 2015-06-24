
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.25

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m1 = 3;                          // Total Number of phase in 1st Induction Motor
p1 = 6;                          // Total number of Poles of 1st Induction Motor
f = 50;                          // Frequency in Hertz
m2 = 3;                          // Total Number of phase in 2nd Induction Motor
p2 = 10;                         // Total number of Poles of 2nd Induction Motor


// CALCULATIONS 

Ns1 = (120*f)/p1;                           // Synchronous speed of 1st Induction Motor in RPM
Ns2 = (120*f)/p2;                           // Synchronous speed of 2nd Induction Motor in RPM
Nscu = (120*f)/(p1+p2);                     // Speed during cumalative casade in RPM
Ndiff = (120*f)/(p2-p1);                    // Speed during cumalative casade in RPM


// DISPLAY RESULTS

disp("EXAMPLE : 5.25 : SOLUTION :-");
printf("\n (a)  Range of speed is %.f - %.f - %.f - %.f RPM \n",Nscu,Ns2,Ns1,Ndiff)
