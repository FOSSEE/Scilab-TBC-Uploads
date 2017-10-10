////Given
r=5*10**-15                                    //m
h=1.05*10**-34
m=1.67*10**-27
e=1.6*10**-13

//Calculation
xmax=2*r                                       //maximum  uncertainity in the position of the nucleon
pmin=h/xmax                                    //minimum uncertainity in the momentum of particle
Kmin=pmin**2/(2.0*m*e)

//Result
printf("\n minimum kinetic energy is %0.1f Mev",Kmin)
