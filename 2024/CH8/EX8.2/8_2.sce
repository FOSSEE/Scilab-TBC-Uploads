clc
//Initialization of variables
p1=20 //psia
p2=40 //psia
t1= 460+40 //R
m=28
R=1.986
cp=0.246 //B/lbm R
//calculations
t2= t1*p2/p1
cv=cp- (R/m)
Qrev=cv*(t2-t1)
ds= cv*log(t2/t1)
//results
printf("heat transferred = %.1f Btu/lbm",Qrev)
printf("\n change in entropy = %.3f Btu/lbm R",ds)
