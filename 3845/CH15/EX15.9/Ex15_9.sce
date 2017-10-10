//Example 15.9
Wi=1.4*10^28;//Number of microstates for the initial macrostate, see Table 15.4
Wf=1*10^29;//Number of microstates for the final macrostate, see Table 15.4
k=1.38*10^-23;//Boltzmann’s constant (J/K)
Si=k*log(Wi);//Entropy of the system in the initial macrostate (J/K)
Sf=k*log(Wf);//Entropy of the system in the final macrostate (J/K)
delta_S=Sf-Si;//Change in entropy (J/K)
printf('Change in entropy = %0.1e J/K',delta_S)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
