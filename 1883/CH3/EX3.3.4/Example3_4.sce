//Chapter-3,Example3_3_4,pg 3-7

n1=1.6                                                  //refractive index f core

n2=1.3                                                  //refractive index of cladding

angle_c=asind(n2/n1)                               //Critical angle 

printf("\nThe critical angle is angle_c = %.2f Degree\n",angle_c)

angle_0=asind(sqrt(n1^2-n2^2))                       //for air numerical aperture is 'NA=sin(angle_0)'

angle_cone=2*angle_0

printf("\nThe acceptance angle cone = %.3f Degree\n",angle_cone)

//mistake in textbook
