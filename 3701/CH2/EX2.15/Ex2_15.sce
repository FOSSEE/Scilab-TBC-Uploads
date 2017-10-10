////Given 
E=0.9                                //Mev
a=120                                //degree
m=9.1*10**-31                        //Kg
c=3*10**8                            //m/s

//calculation
b=((m*c**2)/1.6*10**-19)*10**32
energy=E/(1+2*(E/b)*(3/4.0))

//Result
printf("\n energy of scattered photon  %0.3f Mev",energy)
