//Example 18.5
clc
syms K tau s l;
Gm=K/(tau*s+1);
//For this case
Gma=1;
Gmm=K/(tau*s+1);
Gm=Gma*Gmm;
GI=1/Gmm
f=1/(l*s+1);
//In order to be able to implement this transfer function let f(s)=1/(l*s+1)
//Thus IMC becomes
GI=f/Gmm
Gc=GI/(1-GI*Gm)
//On simplification, it will be in the form of 
Gc=tau*(1+1/(tau*s))/(l*s*K)
printf("The result is in the form of PI controller")