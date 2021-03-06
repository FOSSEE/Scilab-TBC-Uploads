//Chapter 5, Problem 12
clc
z0=75                           //characteristic impedance
fp=500*10^6                     //passband limit frequency
f1=260*10^6                     //frequency in hertz
//from Figure 5.39, it is seen that about five arms will be required
n=5

//Butterworth normalised values
g1=1/1.382
g2=1/1.326
g3=1/2.209
g4=1/1.326
g5=1/1.382
w=2*%pi*fp

//calculation of component values
l1=g1*z0/(w)
c2=g2/(w*z0)
l3=g3*z0/w
c4=g4/(w*z0)
l5=g5*z0/(w)
printf("(a) Number of arms of low pass filter = %.2f \n",n)
printf("(b) Component values are\n\tL1 = %f nH",l1*10^9)
printf("\n\tC2 = %f pF\n\tL3 = %f nH\n\tC4 = %f pF\n\tL5 = %f nH",c2*10^12,l3*10^9,c4*10^12,l5*10^9)
