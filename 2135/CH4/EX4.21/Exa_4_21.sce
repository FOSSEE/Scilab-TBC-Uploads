//Exa 4.21
clc;
clear;
close;
format('v',7);

//Given Data :
p1=5;//bar
T1=30+273;//K
p2=4;//bar
m=1;//Kg
R=0.287;//KJ/KgK
//deltaS=m*R*log(p1/p2)+m*Cp*log(T2/T1);//KJ/kgK
deltaS=m*R*log(p1/p2);//KJ/kgK(T2/T1 leads to 2nd term zero)
disp(deltaS,"Entropy Change in KJ/KgK :  ");
