//find dia of shaft and pins
clc
//solution
//given
T=5000*10^3//N-mm
t=60//N/mm^2
t1=28//N/mm^2
//let d be dia
//T=(%pi*t*d^3)/16
d=(T/11.8)^(1/3)//mm
printf("the dia of shaft is,%f mm\n",d)
//let dp diA of pin
//T=2*(%pi/4)*dp^2*t1*d
dp=[T/(3300)]^0.5//mm
printf("the dia of pin is,%f mm",dp)