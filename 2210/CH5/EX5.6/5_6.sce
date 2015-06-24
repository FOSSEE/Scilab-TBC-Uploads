//Chapter 5, Problem 6
clc
z0=50                           //characteristic impedance in ohm
fp=500*10^6                     //passband limit frequency in hertz

//Butterworth normalised values
g1=1/0.618
g2=1/1.618
g3=1/2
g4=1/1.618
g5=1/0.618
w=2*%pi*fp

//calculation of component values
l1=g1*z0/(w)
c2=g2/(w*z0)
l3=g3*z0/w
c4=g4/(w*z0)
l5=g5*z0/(w)

printf("Component values are\n\tL1 = %.2f nH",l1*10^9)
printf("\n\tC2 = %.2f pF\n\tL3 = %.2f nH\n\tC4 = %.2f pF\n\tL5 = %.2f nH",c2*10^12,l3*10^9,c4*10^12,l5*10^9)
