//Chapter-7,Example7_3_3,pg 7-7

Ho=6.5*10^4                                   //critical field at absolute zero

Tc=7.18                                       //critical temperature

T=4.2                                         //temperature

r=0.5*10^-3                                   //radius of lead wire

Hc=Ho*(1-(T/Tc)^2)

Ic=2*%pi*r*Hc

printf("\ncritical current for wire  Ic = %.2f Amperes\n",Ic)
