
clc
//solution
//given
//refer fig 10.16
b=120//mm//width
t=15//mm//thickness
l1=b-12.5//mm
s=15//mm
ft1=70//N/mm^2//tensile stress
ft2=56//N/mm^2//shear stress
//let l2 be length of weld
//P=A*ft
P=120*15*ft1//N
ft11=ft1/1.5//N/mm^2
ft22=ft2/2.7//N/mm^2
P1=0.707*s*l1*ft11//N
//P2=0.707*s*l2*ft22=440*l2//N
//P=P1+P2//N
l2=(P-P1)/440//mm
printf("the value of length of static weld is,%f mm\n",l2+12.5)
