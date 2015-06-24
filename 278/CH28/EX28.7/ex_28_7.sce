//find
clc
//solution
//given
Np=1500//rpm
P=15000//W
vr=3
q=(%pi/180)*14.5
Tp=25
fop=200
fog=200
t=40
P1=1.25*P
Tg=3*Tp
m=6//mm..assume
Dp=m*Tp/1000
Dg=m*Tg
v=%pi*Dp*Np/60//m/s
Cs=1
Wt=(P1/v)*Cs//N
Cv=3/(3+v)
yp=0.124-(0.684/Tp)
//let b be face width
b1=Wt/(fop*Cv*%pi*m*yp)//mm
printf("face width is,%f mm\n",b1)
//in practical situation b is btw 9.5m to 12.5m..sometime it is also taken as 6m
b=6*m
printf("face width actual is,%f mm\n",b)
printf("addndum,dedendum,working depth,min total depth,tooth thickness,min clearance is,%fmm \n,%fmm \n,%fmm \n,%fmm \n,%fmm \n,%fmm \n",m,1.25*m,2*m,2.25*m,1.5708*m,0.25*m)
Wn=Wt/sin(q)
Wp=0.00118*Tp*b*m^2//N
Wr=sqrt(Wn^2 + Wp^2 +2*Wn*Wp*cos(q))
M=Wr*100//N-mm
T=Wt*(Dp/2)*1000//N-mm
Te=sqrt(T^2 +M^2)
//let dp be pinion hub dia
dp=(Te/7.855)^(1/3)
printf("pinion hub dia is,%f mm\n",dp)