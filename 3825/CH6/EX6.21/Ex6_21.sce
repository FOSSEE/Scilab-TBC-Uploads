clc
m1=5
m2=6
m3=8
//values from appendix are used below given in book
deltaa=m1*19.8+m2*32.24-(-3.626)-m3*28.11
mprintf("deta a=%E\n",deltaa)//ans in the textbook is wrong
deltab=(m1*7.334+m2*0.1924-48.73-m3*(-3.68*10^-4))*10^-2
mprintf("deltab=%E\n",deltab)//ans vary due to roundoff error
deltac=((m1*-5.602)+m2*1.055-(-25.8)-m3*1.746)*10^-5
mprintf("deltac=%E\n",deltac)//ans vary due to roundoff error
deltad=(m1*1.715+(m2*-0.3596)-5.305-(m3*-1.065))*10^-8
mprintf("deltad=%E\n",deltad)//ans vary due to roundoff error
T=298
deltaH298=-3274.5*10^3
deltaH0=deltaH298-(deltaa*T)+((deltab/2)*(T*T))-((deltac/3)*(T*T*T))-((deltad/4)*(T*T*T*T))
mprintf("deltaH0=%EkJ\n",deltaH0/1000)//ans in the textbook is wrong




