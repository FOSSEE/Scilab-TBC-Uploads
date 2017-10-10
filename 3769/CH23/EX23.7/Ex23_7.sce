clear
//Given
l=36.0*10**-8              //m
w0=2*1.6*10**-19             //J
h=6.62*10**-34               //Js
c=3*10**8
e=1.6*10**-19
m=9.0*10**-31

//Calculation
//
l0=(h*c)/w0
E=(h*c)/l
E1=(E/1.6*10**-19)*10**38
K=E1-2
v0=K
vmax=sqrt(e*v0*2/m)

//Result
printf("\n (i) Threshold wavelength is %0.0f  A",l0*10**10)
printf("\n (ii) Maximum kinetic energy of emitted photoelectrons is %0.3f  ev",K)
printf("\n (iii) Stopping potential is %0.3f  Volts",v0)
printf("\n (iv) Velocity is  %0.2f  *10**5 m/s",vmax*10**-5)
