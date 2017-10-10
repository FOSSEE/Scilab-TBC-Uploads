//Example 7.8, Page Number 334
//Diffusion time of carrier
clc;

t=5*(10**-6) //Thickness of the layer in metres
Dc=3.4*(10**-3) //Dc is the Minority diffusion coefficient in metre square per second

//From equation 7.37
td=(t**2)/(2*Dc) //td is the diffusion time in seconds

mprintf("The Time taken for the excess carriers to diffuse is:%.1e s",td)
