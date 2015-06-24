//Chapter-2,Example2_4_4,pg 2-25

wavelength=6328*10^-10                            //wavelength of light 

m1=1                                        //for first order 

m2=2                                        //for second order 

N= 6000*10^2                               //Number of lines per unit length 

angle_1=asind(N*m1*wavelength)

angle_2=asind(N*m2*wavelength)

printf('\nangle of diaffraction for 1st order minima is  ang1 = %.2f degrees',angle_1)

printf('\nangle of diaffraction for 2nd order minima is  ang2 = %.2f degrees',angle_2)
