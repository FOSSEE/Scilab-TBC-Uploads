clear
//Given
h=6.6*10**-34
c=3*10**8
l=2000*10**-10
w0=4.2*1.6*10**-19
e=1.6*10**-19

//Calculation
K=((h*c)/l)-w0
v0=K/e
l1=(h*c)/w0

//Result
printf("\n (i) Potential difference is %0.3f  V", v0)
printf("\n (ii) Wavelength of incident light is %0.0f  A",l1*10**10)
