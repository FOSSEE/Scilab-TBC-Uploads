//design cottered foundation bolts
clc
//solution
//given
P=50*10^3//N
ft=80//N/mm^2
t=50//N/mm^2
fc=100//N/mm^2
pi=3.14
//P=(pi/4)*d^2*ft=62.84*d^2
//d=sqrt(P/62.84)//mm
printf("the diameter of bolt is,%f mm\n",sqrt(P/62.84))
printf("the diameter of bolt is,say 30mm\n")
d=30//mm
//let d1 be dia of enlarged end of bolt
//t1 be thickness of cotter
//t1=d1/4
//P=[((pi/4)*d1^2)-(d1*t1)]*ft
//P=42.84*d1^2
//d1=sqrt(P/42.84)//mm
printf("the dia of enlarged end of bolt is,%f mm\n ",sqrt(P/42.84))
printf("the dia of enlarged end of bolt is,say 36mm\n")
d1=36//mm
t1=d1/4//mm
printf("the thickness is,%f mm\n",t1)
//let b width of cotter
//P=2*b*t1*t==900*b
b=P/(900)//mm
printf("the width of cotter is,%f mm\n",b)