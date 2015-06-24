// Additional solved examples , Example 14 , pg 336
h=6.625*10^-34//plancksconstant(in J s)
c=3*10^8//velocity of x-ray photon(in m/sec)
m0=9.11*10^-31//rest mass of electron(in Kg)
phi=(85*%pi)/180//angle of scattering (in radian)   (converting degree into radian)
delta_H=(h*(1-cos(phi)))/(m0*c)//change in wavelength due to compton scattering
printf("change in wavelength of x-ray photon(in m)\n")
disp(delta_H)
