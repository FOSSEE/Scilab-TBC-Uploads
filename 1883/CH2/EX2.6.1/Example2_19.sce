//Chapter-2,Example2_6_1,pg 2-31

wavelength_1=5893*10^-10                                   //wavelength of light

wavelength_2=5896*10^-10                                   //wavelength of light

m=2                                                //for second order 

N1=3000*10^2/0.5                                   //Number of lines per meter

angle_1=asind(m*wavelength_1*N1)                      //for wavelength_1

angle_2=asind(m*wavelength_2*N1)                       //for wavelength_2

angle_sep=angle_2-angle_1

printf('\nangular seperation is  %.4f degrees \n',angle_sep)

d_wavelength=3*10^-10

N=wavelength_1/(m*d_wavelength)

printf('\n The number of lines per meter is  N = %.0f\n ',N)
