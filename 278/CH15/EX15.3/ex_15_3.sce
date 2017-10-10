
clc
//solution
//given
L=1000//mm
P=800//N
ft=73//N/mm^2
t=70//N/mm^2
//ref fig 15.9
//let d be dia of shaft
T=P*L//N-mm
//T=(%pi/6)*t*d^3=58.2*1000*d^3
//d=[T/(13.75)]^(1/3)
printf("the dia of shfat is,%f mm\n",[T/(13.75)]^(1/3))
printf("the dia of shaft is say 40mm\n")
d=40//mm
//for boss
d2=1.6*d//mm
t2=0.3*d
l2=1.25*d
//using table,corrsponding to d=40mm,we get
w=12//mm
t1=8//mm
//let l1 be length of key
//T=l1*w*t*d/2=16800*l1
l1=T/16800//mm
printf("the width ,thickness and length of key are,%f mm\n,%f mm\n,%f mm\n",w,t1,l1)
//let t2 be thickness and B be width of arm
//B=3*t2
M=800*(1000-60)//N-mm
//Z=(1/6)*t*B^2=1.5*t^3
//ft=M/Z
t2=(M/(1.5*73))^(1/3)//mm
B=3*t2//mm
printf("the thickness ,width of arm are,%f mm\n,%f mm\n",t2,B)