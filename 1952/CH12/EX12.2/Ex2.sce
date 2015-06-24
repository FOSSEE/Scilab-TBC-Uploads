// Additional solved examples , Example 2 , pg 330
lam=500*10^-9//wavelength(in m)
T=250+273  //temperature(in kelvin)   (converting celsius into kelvin)
k=1.38*10^-23//boltzman constant (in (m^2*Kg)/(s^2*k))
h=6.625*10^-34//plancks constant(in Js)
c=3*10^8//speed of light
N=exp(-(h*c)/(lam*k*T)) //N=(n2/n1)=relative population of atoms in the 1st excited state  and in ground state
//n1=number of atoms in ground state
//n2=number of atoms in excited state
printf("Relative population of Na atoms in the 1st excited state and in ground state\n")
disp(N)
