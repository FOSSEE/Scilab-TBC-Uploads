clear
//Given
n=1.0
h=6.62*10**-34
c=3*10**8
f=1.6*10**-19
Z=2

//Calculation
E1=(-13.6*Z**2)/n**2
l=-(h*c)/(E1*f)

//Result
printf("\n Minimum wavelength is %0.0f  A",l*10**10)
