//calculate cripping load
clc
//solution
//given
//ref fig 16.2
l=4000//mm
E=200*10^3//N/mm^3
a1=150*20//area of flange
y1=20/2
a2=(120-20)*20//area of wewb
y2=20+(100/2)//mm
yb=(a1*y1 + a2*y2)/(a1+a2)//mm//CG
Ixx=[(150*20^3/12)+(3000*(34-10)^2)+(20*(100)^3/12)+2000*(70-34)^2]//mm^4
Iyy=((20*(150)^3/12)) +(100*20^3/12)//mm^4
///sinve Iyy is less then Ixx,therfore I-Iyy
I=Iyy//mm^4
L=l//mm
Wcr=%pi^2*E*I/L^2//N
printf("the cripling load acting is,%f N",Wcr)