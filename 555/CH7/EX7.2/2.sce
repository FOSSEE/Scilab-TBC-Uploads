// Implementation of example 7.2
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

// T for temperature,m for mass,S for entropy,dS is change in entropy
t1=273 // K
t2=373 // K
m=1 // kg
c=4.187
// (a)
dSw=m*c*log(t2/t1);
// reservoir's temperature remains constant so dS=Q/T
Q=m*c*(t2-t1);
dSr=-(Q/t2);
dSu=dSw+dSr;
printf("entropy change of universe = %.3f kJ/K \n",dSu);
// (b)
// now water is heated in stages from two reservoirs..
t3=323 // K
dSw=m*c*log(t3/t1)+m*c*log(t2/t3);
dSr1=-[m*c*(t3-t1)/t3];
dSr2=-[m*c*(t2-t3)/t2];
dSu2=dSw+dSr1+dSr2;
printf("entropy change of universe in 2nd case = %.3f kJ/K \n",dSu2);
// the entropy change of  universe would be less & less if water is heated in more & more stages...it will be zero if water is heated reversibly...
// end