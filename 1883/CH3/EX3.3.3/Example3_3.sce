//Chapter-3,Example3_3_3,pg 3-6

n1=1.49                                                  //refractive index f core

n2=1.44                                                  //refractive index of cladding

NA=sqrt(n1^2 - n2^2)                                     //Numerical aperture is 'NA^2 = n1^2 - n2^2'

printf("\nThe Numerical aperture is N.A. = %.5f\n",NA)

angle_0=asind(NA)                                  //for air numerical aperture is 'NA=sin(angle_0)'

printf("\nThe acceptance angle is angle_0 = %.1f Degree\n",angle_0)
