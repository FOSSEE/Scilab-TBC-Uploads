//Chapter-2,Example2_4_6,pg 2-26

m=3                                     //third order 

angle=90                                //for normal incidence 

N=7000                                  //Number of lines per meter 

wavelength=(sind(angle)/(m*N))*10^8

printf('\nThe longest wavelength is lam = %.0f A. ',wavelength)
