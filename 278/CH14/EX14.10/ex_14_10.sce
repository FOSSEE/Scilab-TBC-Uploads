//determine dia of the shaft
clc
//solution
//given
//ref fig 14.6
AB=800//mm
a=(%pi/180)*20
Dc=600//mm
Rc=300//mm
AC=200//mm
Dd=700//mm
Rd=350//mm
DB=250//mm
W=2000//N
T1=3000//N
T2=T1/3//N
t=40//n/mm^2
T=(T1-T2)*Rd//N-mm
Ftc=(T/Rc)//N//tangential force acting oon gear C
//Wc=Ftc/cos(a)//N
Wc=Ftc/0.9397
//Wcv=Wc*cos(a)//veritcal comp
Wcv=Wc*0.9397
//Wch=Wc*sin(a)//hori com
Wcv=Wc*0.342//N
//RAv + RBv=2333+2000
//RAv + RBv=4333//N
RBv=[2000(800-250)+(2333*200)]/800//N
RAv=4333-RBv//N
printf("the value of RAv is,%f N\n",RAv)
//moment due to veritcal component
MAv=0
MBv=0
MCv=RAv*200//N-mm
MDv=RBv*250//N-mm
//RAh + RBh=4849
RBh=[4000*(800-250)+ (849*200)]/800//N
RAh=4849-RBh//N
//moment due to horizontal component
MAh=0
MBh=0
MCh=RAh*200//N-mm
MDh=RBh*250//N-mm
Mc=sqrt(MCv^2 + MCh^2)//net moment abt C
Md=sqrt(MDv^2 + MDh^2)//net moment abt D
printf("the moment acting abt D is,%f N-mm\n",Md)
//M=Md//N-mm//max moment
//printf("the moment acting is,%f N-mm\n",M)
//let d be dia
Te=sqrt(Md^2 + T^2)/N-mm
//Te=(%pi/16)*t*d^3
d=(Te/7.86)^(1/3)//mm
printf("the dia of shaft is,%f mm",d)
