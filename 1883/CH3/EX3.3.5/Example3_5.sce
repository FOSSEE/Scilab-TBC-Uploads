//Chapter-3,Example3_3_5,pg 3-7

angle_0=30                                                //acceptance angle 

n1=1.4                                                //refractive index of core

n2=sqrt(n1^2-sind(angle_0)^2)                         //Numerical aperture is 'NA^2 = n1^2 - n2^2'  also numerical aperture is 'NA=sin(angle_0)'

printf("\nThe refractive index of cladding is  n2 = %.4f\n",n2)
