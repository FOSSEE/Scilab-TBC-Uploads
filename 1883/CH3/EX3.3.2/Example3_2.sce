//Chapter-3,Example3_3_2,pg 3-6

NA=0.2                                                 //Numerical aperture

n2=1.59                                                //refractive index of cladding

n1=sqrt(n2^2-NA^2)                                     //Numerical aperture is 'NA^2 = n1^2 - n2^2'

printf("\nThe refractive index of core is n1 = %.1f\n",n1)

n0=1.33                                                //refractive index of medium

angle_0=asind(NA/n0)                                //For medium numerical aperture is 'NA=n0*sin(angle_0)'

printf("\nThe acceptance angle is angle_0 = %.2f Degree\n",angle_0)
