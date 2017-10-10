
clc
//solution
//given
P=50*10^3//N//load
ft=100//N/mm^2//stress
//let d be diameter in mm
pi=3.14
//A=(pi/4)*d^2//area
//P=ft*A=100*A
//d^2=(50*1000/78.54)
d=sqrt(50000/78.54)//mm
//let x be side if rod is square
//P=ft*A=100*x^2
x=sqrt(500)//mm
//if rod s rectangular
//A=b*t//b=3t,therfore
//A=3*t^2//m^2
//P=ft*A
t=sqrt(50000/300)//mm
b=3*t//mm
printf("the diameter if rod is cylindrical is,%f mm\n",d)
printf("the side is rod is square is,%f mm\n",x)
printf("the length if rod is rectangular is ,%f mm \n",t)
printf("the width if rod is rect is ,%f mm",b)