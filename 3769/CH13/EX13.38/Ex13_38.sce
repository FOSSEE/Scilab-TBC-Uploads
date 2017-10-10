clear
//Given
L=25.48*10**-3                       //H
C=796*10**-6
R=3.0                                     //ohm
E0=283

//Calculation
//
fr=1/(2.0*%pi*sqrt(L*C))
Iv=(E0/sqrt(2))/R
P=Iv**2*R

//Result
printf("\n (a) Frequency of the source is %0.1f  Hz",fr)
printf("\n (b) The value of impedence is %0.3f  ohm",R)
printf("\n The value of current is %0.1f  A",Iv)
printf("\n The power dissipated is %0.0f  W",P)
