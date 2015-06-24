//Find stringing tension in the conductor
clear;
clc;
//soltion
//given
W=0.7;//kg/m//Line conductor wieght
L=250;//meter//span of the line
T1=25;//m//height of the tower 1
T2=75;//m//height of the tower 2
h=T2-T1;//m//difference in the between support
Tm=45;//m//hieght of midway between the towers
hm=Tm-T1;//m//midway point between the two towers
Lm=L/2;//m//half of the span
printf("We know that \nh=(W*L*(L-2*x))/(2*T)\n");
printf("For the two towers\n%d=(%.1f*%d(%d-2*x))/(2*T)\n",h,W,L,L);
printf("For the mid point \n%d=(%.1f*%d(%d-2*x))/(2*T)\n",hm,W,Lm,Lm);
x=-(2*L)+(2.5*Lm);
printf("By above equation x= %d m\n",x);
T=(W*L*(L-2*x))/(2*h);
printf("Stringing Tension(T)=%.2f kg",T)
