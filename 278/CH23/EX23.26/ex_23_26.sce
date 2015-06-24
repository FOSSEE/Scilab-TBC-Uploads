//find
clc
//solution
//given
W=3000//N
n=7
b=65//mm
nf=2
L1=550//mm
l=80//mm
f=350//N/mm^2
fb=80//N/mm^2
E=210000//N/mm^2
//let t be thickness
L=(2*L1-l)/2//mm
ng=n-nf
//f=18WL/(bt^2(2ng+3nf))=26480/t^2
//t=sqrt(26480/350)//mm
printf("thickness is,%f mm\n",sqrt(26480/350))
printf("thickness is, say 9mm\n")
t=9//mm
dx=12*W*L^3/(E*b*t^3*(2*ng+3*nf))
printf("deflection is,%f mm\n",dx)//
l1=b//length of pin
pb=8//N/mm^2
//let d be dia of pin
d=W/(l1*pb)//mm
//ref fig 23.33
l2=l1+4//mm
M=W*l2/4//N-mm
//Z=(%pi/32)*d1^3=0.0982*d1^3
d1=(M/(fb*0.0982))^(1/3)
printf("inner dia of pin is,%f mm\n",d1)
ls=1020/(7-1)+l//mm
printf("lnegth of smallest leaf is,%f mm\n",ls)
l2nd=1020/(7-1)*2+l//mm
printf("length of 2nd leaf is,%f mm\n",l2nd)
l3rd=1020/(7-1)*3+l//mm
printf("length of third leaf is,%f mm\n",l3rd)
l4th=1020/(7-1)*4+l//mm
printf("length of 4th leaf is,%f mm\n",l4th)
l5th=1020/(7-1)*5+l//mm
printf("length of 5th leaf is,%f mm\n",l5th)
l6th =1020/(7-1)*6+l//mm
printf("length of 6ht leaf is,%f mm\n",l6th)
mL=2*L1+%pi*(d+t)*2
