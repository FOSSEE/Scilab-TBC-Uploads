exec('degree_rad.sci', -1)

//Given that
Ym = 9.8*10^-3  //in meter
phi = dtor(100)  //in degrees

//Sample Problem 17-5a
printf("**Sample Problem 17-5a**\n")
Yn = 2*Ym*cos(phi/2)
printf("The amplitude of resultant wave is %fmm\n", Yn*10^3)

//Sample Problem 17-5b
printf("\n**Sample Problem 17-5b**\n")
Y = 4.9*10^-3  //in meter
phi = 2*acos(Y/(2*Ym))
printf("The phase difference required is %frad", phi)