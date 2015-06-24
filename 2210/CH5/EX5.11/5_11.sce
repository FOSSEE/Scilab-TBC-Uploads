//Chapter 5, Problem 11
clc
z0=50                           //characteristic impedance
fp=50*10^6                     //passband limit frequency
//from Figure 5.39, it is seen that about five arms will be required
n=5


//Butterworth normalised values
g1=1.1468
g2=1.3721
g3=1.9760
g4=1.3712
g5=1.1468
w=2*%pi*fp

//calculation of component values
c1=g1/(w*z0)
l2=g2*z0/w
c3=g3/(w*z0)
l4=g4*z0/w
c5=g5/(w*z0)
printf("(a) Number of arms of low pass filter = %.2f \n",n)
printf("Component values are\n\tC1 = %.2f pF",c1*10^12)
printf("\n\tL2 = %.2f nH\n\tC3 = %.2f pF\n\tL4 = %.2f nH\n\tC5 = %.2f pF",l2*10^9,c3*10^12,l4*10^9,c5*10^12)
