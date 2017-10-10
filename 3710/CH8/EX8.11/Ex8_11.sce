//Example 8.11, Page Number 396
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Rayleigh scattering loss
clc;

l=1*(10**-6) //Wavelength in meter
l1=10**3 //Length of the Fiber in kilometer
n=1.45 //Refractive Index
p=0.286
B=7*(10**-11) //in meter square per Newton
T=1400 //in kelvin
k=1.38*(10**-23) //Boltzman Constant in meter square kilogram per second square Kelvin

//From equation 8.38
ar=((8*(%pi**3))/(3*(l**4)))*((n**8)*B*T*k*(p**2))    //ar is the attenuation due to Rayleigh scattering per meter
ar=fpround(ar,6)
mprintf("The Attenuation due to Rayleigh scattering in a silica fiber is %.2e /m\n",ar)

i1=(ar*-1*l1)
j=exp(i1)
L=-10*log10(j) //L is the given loss generated from attenuation in dB
L=fpround(L,5)
mprintf(" The Total loss due to Attenuation is %.2f db/km\n",L)

//at a wavelength of 1.55 micro meter
l=1.55*(10**-6) //new Wavelength in meters

ar=((8*(%pi**3))/(3*(l**4)))*((n**8)*B*T*k*(p**2)) //ar is the attenuation due to Rayleigh scattering per meter
ar=fpround(ar,6)
mprintf(" The Attenuation due to Rayleigh scattering in a silica fiber is %.1e /m\n",ar)

L=-10*log10(exp(ar*-1*l1))    //L is the given loss generated from attenuation in dB
L=fpround(L,2)
mprintf(" The Total loss due to Attenuation is %.2f db/km",L)
