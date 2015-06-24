// Determine concentration of electrons and holes
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-26 in page 52

clear; clc; close;

// Data given
N_D=2*10^14; // Number of donor atoms in atoms/cm^2
N_A=3*10^14; // Number of acceptor atoms in atoms/cm^2
ni=2.5*10^19; // number of intrinsic atoms in atoms/cm^2

// Calculation
p_0=(0.5*10^14)+sqrt(0.25*10^28 + 6.25*10^26);
n_0=-(0.5*10^14)+sqrt(0.25*10^28 + 6.25*10^26);
printf("(a)Concentration of free electrons is %0.3e cm^-3\n",n_0);
printf("(b)Concentration of holes is %0.3e cm^-3\n",p_0);
printf("since p_0>n_0 the sample is p-type\n");
printf("When N_A=N_D=10^15,\n n_0=p_0 from the neutrality equation\n");
printf("Thus the germanium sample in this question is intrinsic by compensation");
printf("When N_D=10^16,\n");
p_0=(6.25*10^26)/10^16;
printf("(c)p_0=%0.2e cm^-3\n",p_0);
printf("Since n_0>p_0,germanium sample in this case is n-type");

// Result
// (a) Number of free electrons are 0.058*10^14 cm^-3 
// (b) Number of holes are 1.058*10^14 cm^-3
// Semiconductor can be made intrinsic without doping or by equal doping