//find size of welds
clc
//solution
//given
//ref fig 10.26
P=25*10^3//N
Tmax=75*10^3//N
l=100//mm
b=150//mm
e=500//mm
//let t is thickness of throat and s size
//t=0.707*s
//A=t*(2*b+2*l)=353.5*s//mm^2
//t=P/A
//t=70.72/s//N/mm^2
M=P*e//N-mm
//Z=t*[b*l+ b^2/3]=15907.5*s//mm^3
//fb=M/Z//
//fb=P*e/Z//
//fb=785.8/s//N/mm^2
//Tmax=0.5*[sqrt(fb^2+4*t^2)]
//75=399.2/s
s=399.2/75//mm
printf("the sieze of weld is,%f mm",s)