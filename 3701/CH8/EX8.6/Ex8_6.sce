////Given
E=2                                 //ev
v0=3                                //ev
m=9*10**-31
a=4*10**-10                         //m
h=1.05*10**-34
b=(v0-E)*(1.6*10**-19)

//Calculation
//
Ka=((sqrt(2*m*(b)))*a)/h
x=sin(Ka*3.14/180.0)
T=(v0**2)/(4.0*E*(v0-E))
T1=1/(1+(T*x**2))

//Result
printf("\n Transmission coefficient is  %0.3f ",T1)
