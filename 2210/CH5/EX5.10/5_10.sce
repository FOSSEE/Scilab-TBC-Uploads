//Chapter 5, Problem 10
clc
z0=50                           //characteristic impedance
fb=525e6
fa=475e6
fp=fb-fa                     //passband limit frequency

f0=sqrt(fb*fa)

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

printf("Component values are\n\tL1 = %f nH",l1*10^9)
printf("\n\tC2 = %f pF\n\tL3 = %f nH\n\tC4 = %f pF\n\tL5 = %f nH",c2*10^12,l3*10^9,c4*10^12,l5*10^9)
