//data
Zin=45    //ohm
ZL=20       //ohm
b=0.5/2      //cm
Er=2.1
L=200*10^-9     //H
f=3*10^9       //Hz
C=55.63*Er*10^-12    //F
//formulas and result
printf("\nresult:-")
Zo=sqrt(Zin*ZL)
printf("\nZo=%.0f ohm",Zo)
k=30/sqrt(200*10^-9/(55.63*Er*10^-12))
a=b/exp(k)
printf("\na=%f cm",a)
lambda=1/(f*sqrt(L*C))
printf("\nlambda=%f m",lambda)
d=lambda/4
printf("\nd=%f m =%f cm",d,d*100)