//Chapter 5, Problem 8
clc
z0=50                           //characteristic impedance in ohm
fb=525e6
fa=475e6
fp=fb-fa                     //passband limit frequency in hertz

f0=sqrt(fb*fa)

//Butterworth normalised values
g1=0.618
g2=1.618
g3=2
g4=1.618
g5=0.618
w=2*%pi*fp

//calculation of component values
c1=g1/(w*z0)
l2=g2*z0/w
c3=g3/(w*z0)
l4=g4*z0/w
c5=g5/(w*z0)

printf("Component values are\n\tC1 = %.2f pF",c1*10^12)
printf("\n\tL2 = %.2f nH\n\tC3 = %.2f pF\n\tL4 = %.2f nH\n\tC5 = %.2f pF",l2*10^9,c3*10^12,l4*10^9,c5*10^12)
