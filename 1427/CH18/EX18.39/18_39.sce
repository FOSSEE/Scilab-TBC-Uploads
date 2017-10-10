//ques-18.39
//Calculating values of q and w and U for conversion of water to steam
clc
n=1;//moles of water
P=1;//pressure (in atm)
L=540;//latent heat of steam (in cal/g)
T1=273; T2=373;//temperature (in K)
V1=22.4;//volume (in L)
q=n*18*L;
V2=(V1*T2)/T1;
w=-P*V2;//neglecting V1 (in L atm)
w=w*24.2;//(in cal)
U=q+w;
printf("q=%.2f kcal, w=%.1f cal and change in internal energy is %.4f kcal.",q/1000,w,U/1000);0
