//find
clc
//solution
//given
P=22000//W
Np=1800//rpm
Ng=600//rpm
a=(%pi/180)*30
q=(%pi/180)*20
Tp=24
vr=3
fo=50//N/mm^2
//b=4*pc
oh=150//mm..overhang
t=50//N/mm^2
T=P*60*1000/(2*%pi*Np)//N-mm
printf("torque acting is,%f N-mm\n",T)
Te=T/(cos(a))^3//N
yb=0.154-(0.912/Te)
//Wt=T/(Dp/2)=(2T/m/Tp)....Dp=m*Tp
//Wt=9725/m....eq1
//v=%pi*m*Tp*Np=135.735*m//m/min
//Cv=350/(350+v)
//Wt=fo*Cv*b*%pi*m*yp//N...eq2
//Wt=(fo*Cv)*4*%pi*m*%pi*m*yb...eq3
//using hit and trial in eq2 and eq3,we egt m=4.75..say 6
m=6
b=4*%pi*m
printf("module and face width is,%f mm\n,%f mm\n",m,b)
Dp=m*Tp
Tg=3*Tp
printf("numbr of teeeth on gear is,%f \n",Tg)
Dg=m*Tg
printf("pitch circle dia of pinion and gear is is,%f mm\n,%f mm\n",Dp,Dg)
Tg=3*Tp
printf("numbr of teeeth on gear is,%f \n",Tg)
//let dp be dia of pinion shaft
Wt=9725/m
printf("Wt is,%f N\n",Wt)
Wa=Wt*tan(a)
printf("Wa is,%f N\n",Wa)
M1=Wt*oh//N-mm
M2=Wa*Dp/2//N-mm
M=sqrt(M1^2 +M2^2)
printf("equivalnet bendng moment is,%f N-mm\n",M)
Te=sqrt(T^2 +M^2)
//dp=(Te*16/(%pi*t))^(1/3)//mm
printf("dia of pinion shaft is,%f mm\n",(Te*16/(%pi*t))^(1/3))
printf("dia of pinion shaft is,say 35mm\n")
dp=35//mm
printf("dia of pinion hub is,%f mm\n",1.8*dp)
printf("length of hub is,%f mm\n",1.25*dp)
T1=T*vr//torque on gear shaft
M22=Wa*Dg/2
Mr=sqrt(M1^2 +M22^2)
Te1=sqrt(Mr^2 + T1^2)
//let dg be dia of gear shfat
//dg=(Te1*16/(%pi*t))^(1/3)//mm
printf("dia of gear shaft is,%f mm\n",(Te1*16/(%pi*t))^(1/3))
printf("dia of gear shaft is,say 40 mm\n")
dg=40//mm
printf("dia of gear hub is,%f mm\n",1.8*dg)
printf("length of hub is,%f mm\n",1.25*dg)
//let a1 be major axis and b1 minor axis
//b1=a1/2
//Z=%pi*b1*a1^2/32=0.05*a1^3
v=135.735*m
Cv=350/(350+v)
Ws=Wt/Cv//N
Mb=Ws/4*Dg/2//N-mm
printf("max bending moment acting is,%f N-mm\n",Mb)
fb=42//N/mm^2
//fb=M/Z
a1=(Mb/(0.05*fb))^(1/3)//mm
printf("major and minor axis of section is,%f mm\n,%f mm\n",a1,a1/2)