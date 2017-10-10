////given
h=6.62*10**-34                              //Js
c=3*10**8                                   //m/s
lembda=4560.0*10**-10                         //m
p=1*10**-3                                  //W
a=0.5/100
e=1.6*10**-19

//calculation
E=(h*c)/lembda
N=p/E                                       //Number of photons incedent on the surface
n=N*a
I=n*e

//result
printf("\n Photoelectric current  %0.2f *10**-6 A",I*10**6)
