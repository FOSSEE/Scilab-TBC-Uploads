//Chapter-3,Example3_4_3,pg 3-11

wavelength=1*10^-6                                                   //wavelength of light 

r=50*10^-6                                                        //radius of core 

delta=0.055                                                     //relative refractive index of fibre

n1=1.48                                                       //refractive index of core

n2=n1*(1-delta)                                                 //as    'delta= (n1-n2)/n1'

printf("\nThe refractive index of cladding  n2 = %.4f \n",n2)

NA=sqrt(n1^2-n2^2)                                            //numerical aperture 

printf("\nThe numerical aperture N.A. = %.3f \n",NA)

angle_0=asind(NA)                                          // as    N.A.=sin(angle_0)

printf("\nThe acceptance angle is  angle_0 = %.2f Degree\n",angle_0)

d=2*r

V=%pi*d*NA/wavelength                                                //Normalized frequency of the fibre

printf("\nThe normalised frequency of fibre is  V = %.2f\n",V)

N=V^2/2                                                         //The number of modes

printf("\nThe number of modes  = %.f \n",N)

