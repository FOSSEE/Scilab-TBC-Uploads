clear
//Given
h=6.62*10**-34                    //Js
c=3*10**8
l=4500*10**-10                     //m
w=2.3

//Calculation
E=(h*c)/l
E1=(E/1.6*10**-19)*10**38
K=E1-w
f0=(w*1.6*10**-19)/h
p=h/l

//Result
printf("\n (i) The energy of photon is %0.1f  ev",E1)
printf("\n (ii) The maximum kinetic energy of emitted electrons is %0.1f  ev",K)
printf("\n (iii) Threshold frequency for sodium is %0.1f *10**14 Hz",f0*10**-14)
printf("\n (iv) Momentum of a photon is %0.1f *10**-27 Kg m/s",p*10**27)
