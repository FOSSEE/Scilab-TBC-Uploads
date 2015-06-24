clc
//initialisations
t1=20//c
m1=10//gm
t2=-80//c
t2=15//c
m2=10.77//gm
t3=10//c
c=0.5
//CALCULATIONS
A=[5 -10;5 -10.77]
b=[550;488.5]
c=A\b
R1=c(1,1)
R2=c(2,1)
//results
printf(' latent heat of fusion of ice= %1f cal/gm',R2)
