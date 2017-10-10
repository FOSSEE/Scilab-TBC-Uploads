
clc
//soltuion
//given
//ref fig 15.25
Wl=3000//N
Wn=5000//N
t=40//N/mm^2
pb=17.5//N/mm^2
fb=70//N/mm^2
//let P be effort applied at  Q
P=[(5000*300)+(3000*300)]/800//N
Wm=Wn-Wl//N
Rm=sqrt(P^2 +Wm^2 )//N
//let P1 be force acitng in worst condition,i.e when one side of pump odesn't work
P1=5000*300/800//N
Rm1=sqrt(P^2 + Wn^2)//N
//let d be dia and l be length at M and N
//l=1.25*d
//Rm1=d*l*pb=21.87*d^2
//d=sqrt(Rm1/21.87)//mm
printf("the dia of pin is,%f mm\n",sqrt(Rm1/21.87))
printf("the dia of pin is,say 16mm\n")
d=16//mm
l=1.25*d//mm
printf("th length is,%f mm\n",l)
ti=(Rm1*4)/(2*d^2*%pi)//N/mm^2
printf("the induced stress is,%f mm\n",ti)
printf("sinc induced stress is withi safe limits,then design is safe\n")
//let  t2 be thickness and b2 be width at sextion X-X
//b2=3*t2//mm
M3=P*800//N-mm
//Z=(1/6)*t3*b3^2=1.5*t3^2
//fb=M/Z
//t3=[M/(1.5*70)]^(1/3)//mm
printf("the thickness is ,%f mm\n",[M3/(1.5*70)]^(1/3))
printf("thickness is t3=30mm\n")
t3=30//mm
printf("the width is,%f mm\n",3*t3)
//let t4 and b4 be thickness and width of lever
M4=Wn*300//N
//Z=(1/6)*t2*b4^2
//Z=6*b4^2
//fb=M/Z
b4=(M4/(5*70))^0.5//mm'
printf("the widht at lever is,%f mm\n",b4)
