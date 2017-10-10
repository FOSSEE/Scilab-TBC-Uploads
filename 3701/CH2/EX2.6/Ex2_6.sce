////Given
v0=6*10**14                              //s**-1
h=6.63*10**-34
e=1.6*10**-19
V0=3

//Calculaton
W=h*v0
W0=(h*v0)/e
V=(e*V0+h*v0)/h

//Result 
printf("\n work function is given by  %0.3f ev",W0)
printf("\n frequency is given by  %0.2f *10**15 s-1",V*10**-15)
