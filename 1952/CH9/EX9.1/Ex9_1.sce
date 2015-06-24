// chapter 9 , Example9.1 , pg 255
H0=6.5*10^4     //magnetic field intensity at 0K   (in  A/m)
T=4.2      //temperature   (in K)
Tc=7.18     //critical temperature  (in K)
Hc=H0*(1-(T^2/Tc^2))    // critical magnetic field intensity
printf("critical magnetic field intensity\n")
printf("Hc=%.0f   A/m",Hc)
