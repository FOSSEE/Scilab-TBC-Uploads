clc
w1=0.009
h1star=64.5
w2=0.029
h2star=109.5
h3=167.45
h4=125.66
mw3=1000
ma=(mw3*(h3-h4))/((h2star-h1star)-((w2-w1)*h4))
mprintf("ma=%fkg/s\n",ma)//ans vary due to roundoff error
mprintf("Make up water required=%fkg/s",ma*(w2-w1))//ans vary due to roundoff error
