//Chapter 2,Example 2.1 Page 78 
clc
clear
//(i) Determine volatge regulation 
C = 0.06 // micro farad
I = 1 //mA
f = 150 //Hz
n = 10 
V = (1/(f*C))*((2*n^3/3)+(n^2/2))
perc = (V*100)/(2*10*100)
printf (" (ia) Volatge regulation = %f kV \n ",V)
printf (" (ib) percentage volatge regulation = %f \n ",perc)
//(ii) Ripple volatge
delV = (1/(f*C))*(n*(n+1)/2)
perc = (delV*100)/(2*10*100)
printf (" (iia) The ripple votage = %f kV \n ",delV)
printf (" (iib) percentage ripple votage = %f \n ",perc)
//(iii) Optimum no. of stages
Vmax = 100
I = 10^-3
OnS = sqrt(Vmax*f*C*10^-6*10^3/I)
//(iv) Maximum output volatge
Vout = OnS*(4/3)*Vmax
printf (" (iii) Optimum no. of stages = %d  \n ",OnS)
printf (" (iv) Maximum output volatge = %d KV\n ",Vout)

// Answers may vary due to round off error
