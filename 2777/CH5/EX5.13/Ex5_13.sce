
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.13

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


m = 3;                          // Total Number of phase in Induction Motor
p = 4;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
s = 0.05;                       // Slip


// CALCULATIONS

Ns = (120*f)/p;                     // Synchronous Speed in RPM
fr = s*f;                           // Rotor-induced Frequency of forward field in Hertz
Nfr = s*Ns;                         // Speed of Forward Rotating magnetic fields with respect to rotor surface in RPM
f2r = s*f;                           // Rotor-induced Frequency of Backward field in Hertz
Nbr = -(s*Ns);                       // Speed of Backward Rotating magnetic fields with respect to rotor surface in RPM
Nr = (1-s)*Ns;                       // Rotor running in Forward direction in RPM
Nfs = Nr+(s*Ns);                     // Speed of Forward Rotating magnetic fields with respect to stator surface in RPM
Nbs = Nr-(s*Ns);                     // Speed of Backward Rotating magnetic fields with respect to stator surface in RPM
Nbs_new = -(0.5*Ns)+(1-0.5)*Nr;      // Speed of Backward Rotating magnetic fields with respect to stator for 50% of slip in RPM


// DISPLAY RESULTS

disp("EXAMPLE : 5.13 : SOLUTION :-");
printf("\n (a.1) Speed of Forward Rotating magnetic fields with respect to rotor surface is equal to + %.f RPM \n",Nfr)
printf("\n (a.2) Speed of Backward Rotating magnetic fields with respect to rotor surface is equal to + %.f RPM \n",Nbr)
printf("\n (b.1) Speed of Forward Rotating magnetic fields with respect to stator surface is equal to + %.f RPM \n",Nfs)
printf("\n (b.2) Speed of Backward Rotating magnetic fields with respect to stator surface is equal to + %.f RPM \n",Nbs)
printf("\n  (c)  Speed of Backward Rotating magnetic fields with respect to stator for 50 percenatge slip is equal to  %.1f RPM \n",Nbs_new)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) Speed of Backward Rotating magnetic fields with respect to stator for 50 percenatge slip is equal to 0 RPM instead of %.1f RPM  \n ",Nbs_new);
