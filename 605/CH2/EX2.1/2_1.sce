// data given in question
// diameter of dish (m)
d=30;
//frequency of radiation (Hz)
f=4*10^9;
// speed of light(m/s)
c=3*10^8;
// efficiency of aperture
e=0.6;
//data print
printf("\nd=30 m\tf=4 GHz\te=0.6\n")
// equation and result
printf("\nresult:-")
wavelength=c/f
printf("\nwavelength of radiating signal=c/f= %.3f m",wavelength)
A=%pi*d^2/4
printf("\narea of aperture A=pi*d^2/4=%.4f m^2",A)
G=4*%pi*A*e/wavelength^2

printf("\nantenna gain G=4*pi*A*e/wavelength^2 =%.3f",G)
printf("=%.0f dB",10*log10(G))
BW=65*wavelength/d
printf("\nhalf power beam width BW=65*wavelength/d=%.4f degree",BW)

