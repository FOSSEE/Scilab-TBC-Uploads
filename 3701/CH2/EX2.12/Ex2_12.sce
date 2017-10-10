////given
V1=.82                                            //volts
V2=1.85                                           //volts
lembda1=4.0*10**-7                                //m
lembda2=3.0*10**-7
e=1.6*10**-19
c=3.0*10**8                                     //m/s

//Calculation
lembda=(1/lembda2)-(1/lembda1)
h=(e*(V2-V1))/(c*lembda)

//Result
printf("\n (a) planks constant  %e Js",h)
printf("\n (b) no, because the stopping potential depends only on the wavelength of light and not on its intensity.")
