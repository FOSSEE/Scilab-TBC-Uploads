////Given
m=50*10**-3                                    //kgram
accuracy=0.01
v=300                                    //m/s
h=1.054*10**-34

//Calculation
p=m*(v*accuracy)/100.0
x=h/p

//Result
printf("\n position of the bullet  %e m",x)
