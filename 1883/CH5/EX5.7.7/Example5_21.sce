//Chapter-5,Example5_7_7,pg 5-29

//By Heisenberg's uncertainty principle

//(delta_E*delta_t)>=h/(4*%pi)

//therefore      (h*c*delta_wavelength*delta_t/wavelength^2) >= h/(4*%pi)

wavelength=546*10^-9                                                                    //wavelength of spectral line

c=3*10^8                                                                         //velocity of light in air

delta_wavelength=10^-14                                                                      //width of spectral line

delta_t=wavelength^2/(4*%pi*c*delta_wavelength)

printf("\nThe time spent by an atom in the excited state \n")

disp(delta_t)

printf("sec\n")
