//Chapter-5,Example5_7_5,pg 5-28

//By Heisenberg's uncertainty principle

//(delta_E*delta_t)>=h/(4*%pi)

//therefore      (h*c*delta_wavelength*delta_t/wavelength^2) >= h/(4*%pi)

wavelength=4*10^-7                                                                      //wavelength of spectral line

c=3*10^8                                                                         //velocity of light in air

delta_wavelength=8*10^-15                                                                    //width of spectral line

delta_t=wavelength^2/(4*%pi*c*delta_wavelength)

printf("\nThe minimum time required by the electrons in upper energy state  Delta_t = \n")

disp(delta_t)

printf("sec\n")
