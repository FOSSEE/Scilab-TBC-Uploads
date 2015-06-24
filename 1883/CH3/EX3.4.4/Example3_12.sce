//Chapter-3,Example3_4_4,pg 3-12

wavelength=1*10^-6                                                      //wavelength of light 

d=6*10^-6                                                        //diameter of core

n1=1.45                                                          //refractive index of core

n2=1.448                                                         //refractive index of cladding 

angle_c=asind(n2/n1)                                               //critical angle is    'sin(angle_c) = n2/n1'

printf("\nThe critical angle is  angle_c = %.f Degree\n",angle_c)

NA=sqrt(n1^2-n2^2)

angle_0=asind(NA)                                              //acceptance angle is    'sin(angle_0) = NA = sqrt(n1^2-n2^2)'

printf("\nThe acceptance angle is  angle_0 =  %.3f Degree\n",angle_0)

N=%pi^2*d^2*NA^2/(2*wavelength^2)                                       //the number of modes propogating through fibre 

printf("\nthe number of modes propogating through fibre is  N = %.f\n",N)
