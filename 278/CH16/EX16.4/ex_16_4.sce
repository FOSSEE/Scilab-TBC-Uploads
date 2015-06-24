//find size of push rod
clc
//solution
//given
l=300//mm
W=1400//N
//D=1.25*d
E=210*1000//N/mm^2
m=2.5
//let d be inner dia nd D be outer dia
//I=(%pi/64)*[D^4-d^4]=0.07*d^4//mm^4
Wcr=m*W
//Wcr=%pi^2*E*I/L^2=1.6*d^4//N
d=(Wcr/1.6)^(1/4)//mm
D=1.25*d//mm
printf("the inner and outer dia is,%f mm\n,%f mm\n",d,D)