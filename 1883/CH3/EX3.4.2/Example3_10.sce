//Chapter-3,Example3_4_2,pg 3-10

//For single mode fibre,  V < 2.405

V=2.405                                                       //normalized frequency of fibre 
 
n1=1.47                                                       //refractive index of core

n2=1.46                                                       //refractive index of cladding 

wavelength=1.3                                                 //wavelength

d=V*wavelength/(%pi*sqrt(n1^2-n2^2))                                 //diameter of core

r=(d/2)

printf("\nThe maximum radius for fibre = %.3f um\n",r)
