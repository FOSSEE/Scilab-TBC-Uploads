// Additional solved examples , Example 21 , pg 341
del_E=0.02*1.6*10^-19   //  del_E = E-Ef (in J)    (converting eV into J)
T=220    //temperature   (in K)
k=1.38*10^-23   //boltzmanns constant  (in J/K)
F_E=1/(1+exp(del_E/(k*T)))    //Fermi Dirac distribution function
printf("F_E=%.3f",F_E)
