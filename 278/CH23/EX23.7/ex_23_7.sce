//find
clc
//solution
//given
W1=400//N
W2=250//N
Di=25//mm
l1=40//mm
l2=50//mm
t=400//N/mm^2
//D=25+d
//T=W1*D/2=400*(25+d)/2=(5000+200*d)N-mm
//T=(%pi/16)*t*d^3
//78.55*d^3=5000+200*d
//by hit and trial,d=4.2//mm
d=4.47//mm(standard value od diameter from table 23.2)
D=25+d
C=D/d
K=(4*C-1)/(4*C-4)+(0.615/C)
//d1=sqrt(K*8*W1*C/(t*%pi))
printf("value od d1 is,%f mm\n",d)
printf("standard value corr to 4.54 is,4.877 mm\n")
//taking d1=4.877 in to consideration
d1=4.877
D1=25+d1
Do=D1+d1
//let n be numbr of turns
dx=l2-l1//deflwection
//n=dx*G*d1^4/(8*D1^3*W)//
G=80000//N/mm^2
W=150
printf("numbr of turns are ,%f \n",dx*G*d1^4/(8*D1^3*W))
printf("numbr of turns are say 15\n")
n=15
nb=n+2
dxmax=(dx/150)*W1
fL=nb*d1 + dxmax + 0.15*dxmax
printf("free length is ,%f mm\n",fL)
printf("pitch of coil is,%f mm",fL/(nb-1))
