//Chapter-3,Example3_4_6,pg 3-13

wavelength=1.4*10^-6                                                 //wavelength of light 

d=40*10^-6                                                          //diameter of core

n1=1.55                                                             //refractive index of core

n2=1.50                                                             //refractive index of cladding 

NA=sqrt(n1^2-n2^2)                                                  //numerical aperture 

printf("\nThe numerical aperture N.A. = %.4f \n",NA)

delta=(n1-n2)/n1                                                      //Fractional index change 

printf("\nThe fractional index change Delta = %.5f\n",delta)
 
V=%pi*d*NA/wavelength                                                      //Normalized frequency of the fibre

printf("\nthe V-number is  V = %.2f  \n",V)
