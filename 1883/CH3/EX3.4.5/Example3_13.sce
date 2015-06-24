//Chapter-3,Example3_4_5,pg 3-12

wavelength=1*10^-6                                                       //wavelength of light 

r=50*10^-6                                                        //radius of core

n1=1.50                                                           //refractive index of core

n2=1.48                                                           //refractive index of cladding 

NA=sqrt(n1^2-n2^2)                                               //numerical aperture

d=2*r                                                             //diameter of core

N=%pi^2*d^2*NA^2/(2*wavelength^2)                                        //the number of modes propogating through fibre 

printf("\nthe number of modes propogating through fibre is  N = %.f\n",N)
