//example-19.1
//page no-561
//given
pE=0.05
//let E-Ef=EE
EE=0.4  //eV
k=8.614*10^-5
//we know that
//p(E)=1/exp((E-EF)/k/T)
//putting above values in above equation we get
T=EE/k/log(1/pE-1)  //K
printf ("the temperature at which there is a probability of 5 percent for an electron to occupy energy state which is 0.4 eV above the fermi level is %f K",T)
