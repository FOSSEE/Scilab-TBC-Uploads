
clc
//given
ne=31
na=25
nb=90
nc=83
Ta=10 //lbft
//Ne-Nf/(Nc-Nf)=-83/31
k=114/83//k=Nc/Nf As Ne = 0, on simplification we get Nc/Nf= 114/83
j=-90/25//j=Na/Nb
//Nc=Nb, Thus Na/Nc=-90/25
//Na/Nf=(Na/Nc)*(Nc/Nf) ie Na/Nf=k*j
//Tf*Nf=Ta*Na
Tf=Ta*k*j
printf("\nTorque exerted on driven shaft = %.1f lb.ft\n",Tf)
