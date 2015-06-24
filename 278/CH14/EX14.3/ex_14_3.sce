//determine dia of the shaft
clc
//solution
//given
P=20*1000//W
N=200//rpm
tu=360//N/mm^2
Fs=8
k=0.5//k=di/do
t=tu/Fs//N/mm^2
T=P*60000/(2*%pi*200)//N-mm
//T=(%pi/16)*t*d^3=8.25*d^3
d=(T/8.25)^(1/3)//mm
printf("the dia of solid shaft is,%f mm\n",d)
//elt di and do be inside and do be outer dia
//T=(%pi/16)*t*do^3*(1-k^4)
//T=(%pi/16)*t*do^3[1-0.5^4]
//T=8.3*do^3
do=(T/8.3)^(1/3)//mm
di=0.5*do//mm
printf("the inner and outer dia is,%f mm\n,%f mm\n",di,do)