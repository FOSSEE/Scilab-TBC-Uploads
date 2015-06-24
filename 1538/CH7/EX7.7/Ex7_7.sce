//example-7.7
//page no-217
//given
//ratio of rate of diffusion at 1350 and 110 degree C is 8
//so
//dM/dt at 1350 degree C(1623K)/dM/dt at 110degree C (1373K)=8
//so 
Ratio=8
//we know that
//Dx=D0*exp(-Q/R/T)
//so Dx (at 1623 K)/Dx (at 1373 K)= exp(-Q/R/T1-Q/R/T2)
//where
T1=1623  //K
T2=1373  //K
//gas constant
R=8.314  //J/mol/K
//so we get
//Ratio=exp(-Q/R*(1/T1-1/T2))
//so we get Q as
Q=-log(Ratio)*R/(1/T1-1/T2)/1000  //KJ/mol
printf ("the activation energy for sulphur diffusion is %d KJ/mol",Q)
