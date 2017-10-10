
clc
//solution
//given
P=3*10^6//W
N=100//rpm
tb=60//N/mm^2
ts=60//N/mm^2
n=8
//D1=1.6*d
//let d be dia of shaft
T=(P*60*1000)/(2*%pi*N)//N-mm
//T=(%pi/16)*t*d^3=11.78*d^3
//d=(T/11.78)^(1/3)//mm
printf("the dia of shaft is,%f mm\n ",(T/11.78)^(1/3))
printf("the dia of shaft is ,say 300 mm\n")
d=300//mm
//let d1 be nominal dia of bolts
//T=(%pi/4)*d1^2*tb*n*D1/2
//d1=(T/90490)^(0.5)//mm
printf("the dia of bolt is,%f mm\n",(T/16495)^(0.5))
printf("the dia of bolt is say d1=60 mm\n")
d1=60//mm
tf=d/3//mm
printf("the flange thciness is,%f m\n",tf)
D2=2.2*d//mm
printf("the diameter of flange is,%f mm",D2)