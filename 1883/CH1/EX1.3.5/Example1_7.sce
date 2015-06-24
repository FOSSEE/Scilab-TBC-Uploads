//Chapter-1,Example1_3_5,pg 1-24

wavelength=6*10^-5                                                      //wavelength of light 

B=0.1                                                            //fringe width(as there are 10 fringes)

u=1                                                              //refractive index of air wedge

a=wavelength/(2*u*B)                                                    //as fringe spacing is    'B = wavelength/(2*a*u)'

dist=10                                                          //distance of plane of rectangular pieces from wire 

d=a*dist                                                         //as for small angle 'tan(a) = a = d/dist'

printf("\nThe diameter of wire is  d = %.3f cm\n",d)

