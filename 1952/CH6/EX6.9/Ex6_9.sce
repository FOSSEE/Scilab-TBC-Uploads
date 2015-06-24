// chapter 6 , Example6 9 , pg 174
del_E=0.01*1.6*10^-19   //  del_E = E-Ef (in J)    (converting eV into J)
T=200    //temperature   (in K)
k=1.38*10^-23   //boltzmanns constant  (in J/K)
F_E=1/(1+exp(del_E/(k*T)))    //Fermi Dirac distribution function
printf("F_E=%.2f",F_E)
