
clc
//soltuion
//given
//ref fig 15.5
L=450//mm
P=400//N
ft=100//N/mm^2
t=55//N/mm^2
//let d1 be mean dia of pin and d be dia of spindle
d=50//mm
T=P*2*L//N-mm
//T=2*(%pi/4)*d1^2*t*(d/2)
//T=2160*d1^2
d1=sqrt(T/2160)//mm
printf("the dia of pin is ,%f mm\n",d1)
//let D be dia of handle
M=P*L//N-mm
T1=400*100//N-mm
Te=sqrt(T1^2 + M^2)//N-mm
//Te=(%pi/16)*t*D^3=10.8^D1^3
D1=(Te/10.8)^(1/3)//mm
printf("the dia using twisting moment is,%f mm\n",D1)
Km=1
Kl=1
Me=0.5*[M + sqrt((M)^2 + (T1)^2)]//N-mm
//Me=(%pi/32)*fb*D^3=9.82*D^3....(fb=ft)
D2=(Me/9.82)^(1/3)
printf("the dia using bending moment is,%f mm\n ",D2)
printf("taking larger value into consideration")