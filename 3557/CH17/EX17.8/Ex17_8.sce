//Example 17.8//

a=23*10^18;//m^-3
q=0.16*10^-18;//C //1 coulomb of charge
b=0.364;//m^2/(V.s)//Electron mobility of germanium
c=0.190;//m^2/(V.s) //Hole Mobility of Germanium
s300K=a*q*(b+c)
mprintf("s300K = %f ohm^-1 m^-1",s300K)
Eg=0.66;//V //band gap
k=86.2*10^-6;//eV/K //Boltzmann constant
T=300;//K //absolute temperature
s0=s300K*%e^((Eg)/(2*k*T))
mprintf("\ns0 = %e ohm^-1 m^-1",s0)
Eg1=-0.66;//eV//band gap
i=60;//ohm^-1 m^-1 //extrinsic conductivity
j=log(i/s0);// Taking log to remove exponential term
//mprintf("j = %f ",j)
T1=1/((j*2*k)/Eg1);//(Cross multiply and dividing)
mprintf("\nT1 = %i K = 135degree C",T1)
//(b)
Ed=0.012;//eV
T2=373;//K //absolute temperature
s1=i*%e^((Ed)/(k*T2))
mprintf("\ns1 = %f ohm^-1 m^-1",s1)
//At 300K
T3=300;//K //absolute temperature
s2=s1*%e^-((Ed)/(k*T3))
mprintf("\ns2 = %f ohm^-1 m^-1",s2)
