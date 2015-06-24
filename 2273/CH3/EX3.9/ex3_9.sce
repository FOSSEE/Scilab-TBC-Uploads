//Calculate sag from taller of the two supports
clear;
clc;
//soltion
//given
Wc=1.925;//kg/m//Line conductor wieght
L=600;//meter//span of the line
h=15//m//T1-T2
Wi=1//kg//Wieght of the ice
Wr=Wi+Wc;//resultant weight
A=2.2//cm^2
U=8000*A;//kg//Breaking strength
sf=5;//safety factor
T=U/sf;//kg//max allowable tension
printf("x1+x2= %dm\n",L);
dif=((h*2*T)/(Wr*L));//x2-x1
printf("x2-x1= %dm\n",dif);
x2=(L+dif)/2;//m
x1=L-x2;//m
printf("x1= %dm, x2= %dm\n",round(x1),round(x2));
sag= ((Wr*(round(x2))^2)/(2*T));//m
printf("Sag(from taller of the two supports)= %.3f m\n",sag);
