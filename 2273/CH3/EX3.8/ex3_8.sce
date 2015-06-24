//Calculate the minimum clearance of conductor and water
clear;
clc;
//soltion
//given
W=1.5;//kg/m//Line conductor wieght
L=500;//meter//span of the line
T=1600;//kg//max allowable tension
T1=30;//m//height of the tower 1
T2=90;//m//height of the tower 2
h=T2-T1;//m//difference in the between support
printf("Distance of support T1 from O(Lowest point) be x1\n");
printf("Distance of support T2 from O(Lowest point) be x2\n");
printf("x1+x2= %dm\n",L);
dif=((h*2*T)/(W*L));//x2-x1
printf("x2-x1= %dm\n",dif);
x2=(L+dif)/2;//m
x1=L-x2;//m
printf("x1= %dm, x2= %dm\n",x1,x2);
sag= ((W*x1^2)/(2*T));//m
printf("Sag(From tower 1)= %d m\n",round(sag));
C=T1-sag;//Clearance
printf("Clearance of the lowest point from water level= %dm\n",C);
