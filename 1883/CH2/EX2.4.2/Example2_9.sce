//Chapter-2,Example2_4_2,pg 2-24

//as a mth order of wavelength  5400 A. is superimposed on (m+1)th order of wavelength  4050 A.

angle=30                                   //angle of diffraction

wavelength_1=5400                                 //for mth order 

wavelength_2=4050                                 //for (m+1)th order 

m=wavelength_2/(wavelength_1-wavelength_2)

N=(sind(angle)/(m*wavelength_1))*10^8                              //Number of lines per cm

printf('\nNumber of lines per cm  N = %.2f',N)
