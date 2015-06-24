//find length of each parallel fillet weld
clc
//solution
//given
//ref fig 10.15
b=75//mm//width
t=12.5//mm//thickness
ft=70//N/mm^2
T=56//N/mm^2
l1=b-t//mm
s=12.5//mm
//let l2 be length of each parallel fillet for static loading
//P=A*ft
P=b*t*ft//N//max load
P1=0.707*s*l1*ft//N
//P2=1.414*s*l2*T=990*l2//N
//P=P1+P2
l2=(P-P1)/990//mm
printf("the value of length of static weld is,%f mm\n",l2+12.5)
//length of parallel fillet for fatique loading
ft1=ft/1.5//N/mm^2
T1=T/2.7//N/mm^2
P11=0.707*s*l1*ft1//N
//P2=1.414*s*l2*T1=366*l22//N
//P=P1+P2
l22=(P-P11)/366//mm
printf("the value of length of static weld is,%f mm\n",l22+12.5)
