// data in question
//distance of satellite from earth surface(m)
R=35860000;
//operating frequency of satellite(Hz)
f=4*10^9;
c=3*10^8;
//data print
printf("\nR=35,860 km\tf=4 GHz\n")
//equations and result
printf("\nresult:-")
wavelength=c/f
printf("\nwavelength of signal = c/f = %.3f m",wavelength)
space_loss_ratio=(wavelength/(4*%pi*R))^2
printf("\nspace loss ratio=(wavelength/(4*pi*R))^2 = %.2e",space_loss_ratio)
printf(" = %.4f dB",10*log10(space_loss_ratio))