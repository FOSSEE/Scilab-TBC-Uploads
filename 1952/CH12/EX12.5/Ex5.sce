// Additional solved examples , Example 5 , pg 332
lam=540*10^-9//wavelength(in m)
Em=5*10^-3*60//energy emitted per minute(in J/min)
c=3*10^8//speed of light(in m/s)
h=6.625*10^-34//plancks constant(in Js)
n=c/lam  //frequency of emitted photons(in Hz)
E=h*n  //energy of each photon(in J)
N=Em/E  //number of photons emitted per minute
printf("Number of photons emitted per minute")
disp(N)
