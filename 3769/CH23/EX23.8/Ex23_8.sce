clear
//Given
h=6.62*10**-34
c=3*10**8
l0=24.8*10**-8
a=1.2
e=1.6*10**-19

//Calculation
w0=(h*c)/l0
w01=(w0/1.6*10**-19)*10**38
h1=w01+a
C=h1*e
l=(h*c)/C

//Result
printf("\n Wavelength of incident light is %0.0f  A",l*10**10)
