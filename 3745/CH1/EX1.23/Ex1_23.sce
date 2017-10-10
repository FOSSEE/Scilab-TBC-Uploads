// Ex 23 Page 364

clc;clear;close;
// Given
Zo=50;//ohm
VSWR=2;//ratio
//lm=0.2*lamda
lmBYlamda=0.2
betaINTOlamda=2*%pi
rho=(VSWR-1)/(VSWR+1);//reflection coefficient
theta=2*betaINTOlamda*lmBYlamda;//radian
//exp(j*theta)=cos(theta)+%i*sin(theta)
ZL=Zo*(1-rho*(cos(theta)+%i*sin(theta)))/(1+rho*(cos(theta)+%i*sin(theta)));//ohm
Rs=real(ZL);//ohm
Xs=abs(imag(ZL));//ohm(capacitive)
printf("Series equivalent circuit:")
printf("\n Rs = %0.1f ohm",Rs)
printf("\n Xs = %0.1f ohm",Xs)
YL=(1/ZL)*1000;//mS
Rp=1000/real(YL);//ohm
Xp=1000/imag(YL);//ohm
printf("\n\n Parallel equivalent circuit:")
printf("\n Rp = %0.1f ohm",Rp)
printf("\n Xp = %0.f ohm",Xp)

