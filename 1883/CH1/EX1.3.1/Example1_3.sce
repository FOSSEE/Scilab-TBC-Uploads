//Chapter-1,Example1_3_1,pg 1-21

N=10                                                //no of dark fringes 

d=1.2                                               //distance between consecutive fringes 

B_air=d/N                                            //fringe width in air

a=(40/3600)*(%pi/180)                               //angle made by film in radians 

wavelength=2*a*B_air                                        //as fringe width in air is     'B_air = wavelength/(2*a)'

printf("\nThe wavelength of monochromatic light is = %.8f cm\n",wavelength)
