//Chapter-3,Example3_4_1,pg 3-10

d=29*10^-6                                                      //diameter of core of step index fibre

wavelength=1.3*10^-6                                                   //wavelength of light

n1=1.52                                                         //refractive index of core

n2=1.5189                                                       //refractive index of cladding

V=%pi*d*sqrt(n1^2-n2^2)/wavelength                                     //Normalized frequency of the fibre

printf("\nThe normalised frequency of fibre is  V = %.3f\n",V)

N=V^2/2                                                         //The number of modes

printf("\nThe number of modes = %.f\n",N)
