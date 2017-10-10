////Given
E=10*10**6                                             //ev
T=2.0*10**-3
m=6.68*10**-27                                   //kg
h=1.054*10**-34                                  //Js
e=1.6*10**-19
v0=30.0*10**6                                         //ev

//Calculation
//
K=(sqrt(2*m*(v0-E)*e))/h
a=(1/(2.0*K))*(2.303*log10((16/T)*(E/v0)*(1-(E/v0))))

//Result
printf("\n The width of the barrier is  %e m",a)
printf("\nthe answers vary due to round off error")

