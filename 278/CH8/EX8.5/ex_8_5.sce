//design oval flanged pipe
clc
//solution
//given
D=50//mm
R=25//mm
p=7//N/mm^2
pi=3.14
ft=20//N/mm^2
fb=60//N/mm^2
//t=R*[sqrt[(ft+p)/(ft-p)]-1]//mm//thickneess of pipe
t=R*{sqrt[27/13]-1}//mm
w=10//mm//width of packing
D1=D+(2*w)//mm
F=(pi/4)*(D1)^2*p//N
Fb=F/2//force on bolts
//let dc be diameter of bolts
//Fb=(pi/4)*(dc)^2*fb
dc=sqrt(13471.5/47.2)//mm
d=dc/0.84//mm
Do=D+(2*t)+(4.6*d)//mm//outer diameter of flange
Dp=Do-(3*t+20)//mm//pitch dia of bolts
b=89//mm
e=33//mm
Mxx=Fb*e//N-mm
//Z=(1/6)*b*(tf)^2
//Mxx=ft*14.83*tf^2
tf=sqrt(444560/296.6)//mm
printf("the thickness of pipe is,%f mm\n",t)
printf("the nominal dia is,%f mm\n",d)
printf("the outer diameter of flange is,%f mm\n",Do)
printf("the thickness of flange is,%f mm",tf)
