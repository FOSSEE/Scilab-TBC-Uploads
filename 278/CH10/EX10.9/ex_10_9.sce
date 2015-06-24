//find size of weld
clc
//solution
//given
P=2000//N
e=120//mm
l=40//mm
Tmax=25//N/mm^2
//let s be size of weld and t be throat thickness
//ref fig 10.24
//A=2*t*l
//A=2*0.707*s*l
//A=2*0.707*s*40
//A=56.56*s//mm^2
//t=P/A
//t=35.4/s//N/mm^2
M=P*e//N-mm
//Z=s*l^2/(4.242)//section modulus//mm^3
//fb=M/Z//
//fb=P*e/Z//
//fb=636.6/s
//Tmax=0.5*[sqrt(fb^2+4*t^2)]
//25=320.3/s
s=320.3/25//mm
printf("the sieze of weld is,%f mm",s)