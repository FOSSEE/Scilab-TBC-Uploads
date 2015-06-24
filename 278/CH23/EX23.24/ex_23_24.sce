//find
clc
//solution
//given
n=12
nf=2
L1=525//mm
l=85//mm
W=2700//N
ff=280//N/mm^2
E=210*1000//N/mm^2
//let t be thickness and b be th width
//nt/b=3
//b=4t
n=12
L=(2*L1-l)/2//mm
ng=n-nf
//ff=18WL/(bt^2(2ng+3nf))
//ff=225476/t^3
t=(225476/ff)^(1/3)//mm
printf("thickness and width is,%f mm\n,%f mm\n",t,4*t)
b=4*t//taking t=9.3 not 10
dx=12*W*L^3/(E*b*t^3*(2*ng+3*nf))
printf("deflection is,%f mm\n",dx)//