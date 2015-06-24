//find the clearance of conductor from ground
clear;
clc;
//soltion
//given
W=1;//kg/m//Line conductor wieght
L=300;//meter//span of the line
T=1500;//kg//max allowable tension
T1=22-2;//m//effective height of the towers
g=1/20;//sin Θ//gradient
h=L*g//m//vertical distance between two towers
printf("x1+x2≈ %dm\n",L);
dif=((h*2*T)/(W*L));//x2-x1
printf("x2-x1= %dm\n",dif);
x2=(L+dif)/2;//m
x1=L-x2;//m
printf("x1= %dm, x2= %dm\n",round(x1),round(x2));
sag= ((W*x2^2)/(2*T));//m
printf("Sag= %.3f m\n",sag);
T2=T1+h;//m//hieght of the second tower
gf=x1*tand(asind(1/20));//m//elevation of the groundat max sag
OG=T2-sag-gf;//m//ground clearance
printf("Clearance of the lowest point O from ground is %.2fm",OG);
//SINCE THERE IS NO REFRENCE OF WATERLEVEL IN THE QUESTION THEREFORE THE EXTRA SOLUTION IS AN TYPOGRAPHICAL ERROR 
