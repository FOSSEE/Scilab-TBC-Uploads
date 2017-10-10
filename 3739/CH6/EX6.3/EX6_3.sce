//Chapter 6, Example 6.3, page 228
clc

//Initialisation
f=300*10**6                              //frequency in Hz
l1=4*10**3                               //distance in m
l2=6*10**3                               //distance in m
h1=20                                    //height in m
c=3*10**8                                //speed of light
d1=4                                     //distance in km
d2=6                                     //distance in km
R=10                                     //radius in km
m=0.13
n=1.99


//Calculation
h=c*f**-1                                 //wavelength
l=l1+l2
r1=sqrt(l1*l2*h/l)
rat1=h1/r1                                 //ratio
a=sqrt((2*(d1+d2))/(h*d1*d2))
v=0.0316*h1*a
jv=6.9+20*log10(1.585)              //knife-edge obstacle loss
k=8.2+12*n
Tmn=k*m
A=jv+Tmn                                 //rounded obstacle loss

//Results
printf("(1) Ratio = %f",rat1)
printf("\n(2) Loss J(v) = %.1f dB",jv)
printf("\n(3) Loss A = %.2f dB",A)
