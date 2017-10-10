clear
//Given
C=1200*10**-12                         //F
E=500
L=0.075                     //H

//Calculation
//
q0=C*E
I0=q0/(sqrt(L*C))
f=1/(2*%pi*sqrt(L*C))
T=1/f
U=q0**2/(2.0*C)

//Result
printf("\n (i) The initial charge onthe capcitor is %0.3f  c",q0)
printf("\n (ii) The maximum current is %0.0f  mA",I0*10**3)
printf("\n (iii) The value of frequency is %0.0f  *10**3 Hz",f*10**-3)
printf("\n Time period is %0.0f  *10**-5 S",T*10**5)
printf("\n (iv) Total energy is %0.3f  *10**-4 J",U*10**4)
