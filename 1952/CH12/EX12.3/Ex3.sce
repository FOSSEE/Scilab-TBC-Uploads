// Additional solved examples , Example 3 , pg 331
T=260+273 //temperature(in kelvin)   (converting celsius into kelvin)
h=6.625*10^-34//plancks constant(in Js)
c=3*10^8//speed of light(in m/s)
lam=590*10^-9//wavelength(in m)
k=1.38*10^-23//boltzman constant (in (m^2*Kg)/(s^2*k))
N=1/(exp((h*c)/(lam*k*T))-1)  //N=((n21)'/(n21))   ratio of stimulated  emission to spontaneous  emission
printf("Ratio of stimulated  emission to spontaneous  emission is")
disp(N)
